$NetBSD: patch-board_pine64_pinebook-pro-rk3399_pinebook-pro-rk3399.c,v 1.1 2022/02/11 21:46:14 mrg Exp $

Fix panel reset.


From 352cb7b28bf4a16330f148043e8d10b0141bbfcb Mon Sep 17 00:00:00 2001
From: Arnaud Patard <arnaud.patard@rtp-net.org>
Date: Wed, 8 Jul 2020 21:43:36 -0400
Subject: [PATCH 4/4] PBP: Fix panel reset

On warm reset, the pinebook pro panel is not working correctly.
The issue is not yet debugged so, for now, this hack seems to be
enough. It toggles the GPIO1_C6 gpio [ LCDVCC_EN signal in the
schematics ] used by the vcc3v3_panel regulator.

There's no gpio_request, since the gpio is already in use at this
stage, so it can only fail.

Origin: http://people.hupstream.com/~rtp/pbp/20200706/patches/hack-reset.patch


--- board/pine64/pinebook-pro-rk3399/pinebook-pro-rk3399.c.orig	2021-04-26 17:53:51.000000000 -0700
+++ board/pine64/pinebook-pro-rk3399/pinebook-pro-rk3399.c	2021-05-08 15:36:55.355143117 -0700
@@ -7,13 +7,15 @@
 #include <common.h>
 #include <dm.h>
 #include <syscon.h>
+#include <linux/delay.h>
+#include <asm/gpio.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
+#include <asm/arch-rockchip/gpio.h>
 #include <asm/arch-rockchip/hardware.h>
 #include <asm/arch-rockchip/misc.h>
 #include <power/regulator.h>
-
 #define GRF_IO_VSEL_BT565_SHIFT 0
 #define PMUGRF_CON0_VSEL_SHIFT 8
 
@@ -59,6 +61,7 @@
 	const u32 cpuid_length = 0x10;
 	u8 cpuid[cpuid_length];
 	int ret;
+	unsigned int gpio;
 
 	setup_iodomain();
 
@@ -70,6 +73,11 @@
 	if (ret)
 		return ret;
 
+	gpio_lookup_name("B22", NULL, NULL, &gpio);
+	gpio_direction_output(gpio, 0);
+	udelay(500000);
+	gpio_direction_output(gpio, 1);
+
 	return ret;
 }
 #endif
