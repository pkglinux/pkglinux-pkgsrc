$NetBSD: patch-src_3rdparty_chromium_third__party_skia_src_pdf_SkPDFSubsetFont.cpp,v 1.1 2022/04/18 11:18:19 adam Exp $

https://codereview.qt-project.org/c/qt/qtwebengine-chromium/+/376502
[Backport] Ease HarfBuzz API change with feature detection

--- src/3rdparty/chromium/third_party/skia/src/pdf/SkPDFSubsetFont.cpp.orig	2021-02-19 16:41:59.000000000 +0000
+++ src/3rdparty/chromium/third_party/skia/src/pdf/SkPDFSubsetFont.cpp
@@ -49,6 +49,37 @@ static sk_sp<SkData> to_data(HBBlob blob
                                 blob.release());
 }
 
+template<typename...> using void_t = void;
+template<typename T, typename = void>
+struct SkPDFHarfBuzzSubset {
+    // This is the HarfBuzz 3.0 interface.
+    // hb_subset_flags_t does not exist in 2.0. It isn't dependent on T, so inline the value of
+    // HB_SUBSET_FLAGS_RETAIN_GIDS until 2.0 is no longer supported.
+    static HBFace Make(T input, hb_face_t* face) {
+        // TODO: When possible, check if a font is 'tricky' with FT_IS_TRICKY.
+        // If it isn't known if a font is 'tricky', retain the hints.
+        hb_subset_input_set_flags(input, 2/*HB_SUBSET_FLAGS_RETAIN_GIDS*/);
+        return HBFace(hb_subset_or_fail(face, input));
+    }
+};
+template<typename T>
+struct SkPDFHarfBuzzSubset<T, void_t<
+    decltype(hb_subset_input_set_retain_gids(std::declval<T>(), std::declval<bool>())),
+    decltype(hb_subset_input_set_drop_hints(std::declval<T>(), std::declval<bool>())),
+    decltype(hb_subset(std::declval<hb_face_t*>(), std::declval<T>()))
+    >>
+{
+    // This is the HarfBuzz 2.0 (non-public) interface, used if it exists.
+    // This code should be removed as soon as all users are migrated to the newer API.
+    static HBFace Make(T input, hb_face_t* face) {
+        hb_subset_input_set_retain_gids(input, true);
+        // TODO: When possible, check if a font is 'tricky' with FT_IS_TRICKY.
+        // If it isn't known if a font is 'tricky', retain the hints.
+        hb_subset_input_set_drop_hints(input, false);
+        return HBFace(hb_subset(face, input));
+    }
+};
+
 static sk_sp<SkData> subset_harfbuzz(sk_sp<SkData> fontData,
                                      const SkPDFGlyphUse& glyphUsage,
                                      int ttcIndex) {
@@ -71,11 +102,10 @@ static sk_sp<SkData> subset_harfbuzz(sk_
     hb_set_t* glyphs = hb_subset_input_glyph_set(input.get());
     glyphUsage.getSetValues([&glyphs](unsigned gid) { hb_set_add(glyphs, gid);});
 
-    hb_subset_input_set_retain_gids(input.get(), true);
-    // TODO: When possible, check if a font is 'tricky' with FT_IS_TRICKY.
-    // If it isn't known if a font is 'tricky', retain the hints.
-    hb_subset_input_set_drop_hints(input.get(), false);
-    HBFace subset(hb_subset(face.get(), input.get()));
+    HBFace subset = SkPDFHarfBuzzSubset<hb_subset_input_t*>::Make(input.get(), face.get());
+    if (!subset) {
+        return nullptr;
+    }
     HBBlob result(hb_face_reference_blob(subset.get()));
     return to_data(std::move(result));
 }
