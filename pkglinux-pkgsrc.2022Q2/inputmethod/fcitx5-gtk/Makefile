# $NetBSD: Makefile,v 1.5 2021/12/08 16:05:12 adam Exp $

DISTNAME=	fcitx5-gtk-5.0.4
PKGREVISION=	1
CATEGORIES=	inputmethod
MASTER_SITES=	https://download.fcitx-im.org/fcitx5/fcitx5-gtk/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/fcitx/fcitx5-gtk
COMMENT=	GTK input method module for fcitx5
LICENSE=	gnu-lgpl-v2.1

BUILD_DEPENDS+=	extra-cmake-modules-[0-9]*:../../devel/extra-cmake-modules

USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

GCC_REQD+=	10

CMAKE_ARGS+=		-DENABLE_WAYLAND=off

PKGCONFIG_OVERRIDE+=	fcitx-gclient/Fcitx5GClient.pc.in

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/fmtlib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/gtk4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
