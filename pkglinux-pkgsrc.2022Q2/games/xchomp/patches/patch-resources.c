$NetBSD: patch-resources.c,v 1.1 2021/12/29 23:56:01 nia Exp $

Add return types, from FreeBSD Ports.

--- resources.c.orig	1994-03-18 05:12:25.000000000 +0000
+++ resources.c
@@ -9,7 +9,7 @@
  * contexts.
  */
 
-create_window(argc, argv)
+void create_window(argc, argv)
 int argc;
 char *argv[];
 {
@@ -39,7 +39,7 @@ char *argv[];
 }
 
 
-create_pac()
+void create_pac()
 {
    int i;
 
@@ -127,7 +127,7 @@ create_pac()
 }
 
 
-create_ghost()
+void create_ghost()
 {
    int i;
 
@@ -164,7 +164,7 @@ create_ghost()
 }
 
 
-create_maze_symbols()
+void create_maze_symbols()
 {
    int          i;
    Pixmap       empty;
@@ -190,7 +190,7 @@ create_maze_symbols()
 }
 
 
-create_maps()
+void create_maps()
 {
    powermap = XCreatePixmap(display, root, WIN_WIDTH, WIN_HEIGHT, depth);
    save = XCreatePixmap(display, root, WIN_WIDTH, WIN_HEIGHT, depth);
@@ -199,8 +199,7 @@ create_maps()
 }
 
 
-
-create_fruit()
+void create_fruit()
 {
    fruit_pix[0] = XCreatePixmapFromBitmapData(display, root, fcherry_bits,
       GHOST_SIZE, GHOST_SIZE, 1, 0, 1);
@@ -261,7 +260,7 @@ create_fruit()
 }
 
 
-create_GCs()
+void create_GCs()
 {
    XGCValues            gcv;
    unsigned long        mask;
@@ -341,7 +340,7 @@ create_GCs()
 }
 
 
-create_demo_images()
+void create_demo_images()
 {
    demo_mask[0] = XCreatePixmapFromBitmapData(display, root, bigc_bits,
       48, 48, 1, 0, 1);
@@ -380,7 +379,7 @@ create_demo_images()
 }
 
 
-clear_maps()
+void clear_maps()
 {
    XFillRectangle(display, powermap, clearGC, 0, 0, WIN_WIDTH, WIN_HEIGHT);
    XFillRectangle(display, save, clearGC, 0, 0, WIN_WIDTH, WIN_HEIGHT);
@@ -388,7 +387,7 @@ clear_maps()
 }
 
 
-create_regions()
+void create_regions()
 {
    XRectangle	full_rect;
    int		i;
@@ -411,7 +410,7 @@ create_regions()
 }
 
 
-destroy_regions()
+void destroy_regions()
 {
    int i;
 
