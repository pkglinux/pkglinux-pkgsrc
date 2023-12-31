$NetBSD$

--- src/aticonfig.c.orig	2018-05-18 16:51:41.000000000 +0000
+++ src/aticonfig.c
@@ -311,42 +311,42 @@ ATIProcessOptions
 
     (void)memcpy(PublicOption, ATIPublicOptions, ATIPublicOptionSize);
 
-#   define ProbeSparse   PublicOption[ATI_OPTION_PROBE_SPARSE].value.bool
-#   define Accel         PublicOption[ATI_OPTION_ACCEL].value.bool
-#   define BIOSDisplay   PrivateOption[ATI_OPTION_BIOS_DISPLAY].value.bool
-#   define Blend         PrivateOption[ATI_OPTION_BLEND].value.bool
-#   define CRTDisplay    PublicOption[ATI_OPTION_CRT_DISPLAY].value.bool
-#   define CRTScreen     PrivateOption[ATI_OPTION_CRT_SCREEN].value.bool
-#   define CSync         PublicOption[ATI_OPTION_CSYNC].value.bool
-#   define Devel         PrivateOption[ATI_OPTION_DEVEL].value.bool
-#   define HWCursor      PublicOption[ATI_OPTION_HWCURSOR].value.bool
+#   define ProbeSparse   PublicOption[ATI_OPTION_PROBE_SPARSE].value.boolean
+#   define Accel         PublicOption[ATI_OPTION_ACCEL].value.boolean
+#   define BIOSDisplay   PrivateOption[ATI_OPTION_BIOS_DISPLAY].value.boolean
+#   define Blend         PrivateOption[ATI_OPTION_BLEND].value.boolean
+#   define CRTDisplay    PublicOption[ATI_OPTION_CRT_DISPLAY].value.boolean
+#   define CRTScreen     PrivateOption[ATI_OPTION_CRT_SCREEN].value.boolean
+#   define CSync         PublicOption[ATI_OPTION_CSYNC].value.boolean
+#   define Devel         PrivateOption[ATI_OPTION_DEVEL].value.boolean
+#   define HWCursor      PublicOption[ATI_OPTION_HWCURSOR].value.boolean
 
 #ifdef XF86DRI_DEVEL
 
-#   define IsPCI       PublicOption[ATI_OPTION_IS_PCI].value.bool
+#   define IsPCI       PublicOption[ATI_OPTION_IS_PCI].value.boolean
 #   define DMAMode     PublicOption[ATI_OPTION_DMA_MODE].value.str
 #   define AGPMode     PublicOption[ATI_OPTION_AGP_MODE].value.num
 #   define AGPSize     PublicOption[ATI_OPTION_AGP_SIZE].value.num
-#   define LocalTex    PublicOption[ATI_OPTION_LOCAL_TEXTURES].value.bool
+#   define LocalTex    PublicOption[ATI_OPTION_LOCAL_TEXTURES].value.boolean
 #   define BufferSize  PublicOption[ATI_OPTION_BUFFER_SIZE].value.num
 
 #endif /* XF86DRI_DEVEL */
 
 #ifdef TV_OUT
 
-#   define TvOut        PublicOption[ATI_OPTION_TV_OUT].value.bool
+#   define TvOut        PublicOption[ATI_OPTION_TV_OUT].value.boolean
 #   define TvStd        PublicOption[ATI_OPTION_TV_STD].value.str
 
 #endif /* TV_OUT */
 
-#   define CacheMMIO     PublicOption[ATI_OPTION_MMIO_CACHE].value.bool
-#   define TestCacheMMIO PublicOption[ATI_OPTION_TEST_MMIO_CACHE].value.bool
-#   define PanelDisplay  PublicOption[ATI_OPTION_PANEL_DISPLAY].value.bool
-#   define ShadowFB      PublicOption[ATI_OPTION_SHADOW_FB].value.bool
-#   define SWCursor      PublicOption[ATI_OPTION_SWCURSOR].value.bool
+#   define CacheMMIO     PublicOption[ATI_OPTION_MMIO_CACHE].value.boolean
+#   define TestCacheMMIO PublicOption[ATI_OPTION_TEST_MMIO_CACHE].value.boolean
+#   define PanelDisplay  PublicOption[ATI_OPTION_PANEL_DISPLAY].value.boolean
+#   define ShadowFB      PublicOption[ATI_OPTION_SHADOW_FB].value.boolean
+#   define SWCursor      PublicOption[ATI_OPTION_SWCURSOR].value.boolean
 #   define AccelMethod   PublicOption[ATI_OPTION_ACCELMETHOD].value.str
-#   define RenderAccel   PublicOption[ATI_OPTION_RENDER_ACCEL].value.bool
-#   define LCDSync       PrivateOption[ATI_OPTION_LCDSYNC].value.bool
+#   define RenderAccel   PublicOption[ATI_OPTION_RENDER_ACCEL].value.boolean
+#   define LCDSync       PrivateOption[ATI_OPTION_LCDSYNC].value.boolean
 
 #   define ReferenceClock \
         PublicOption[ATI_OPTION_REFERENCE_CLOCK].value.freq.freq
