# $NetBSD: Makefile,v 1.9 2020/01/18 23:32:55 rillig Exp $

DISTNAME=	# empty
PKGNAME=	modular-xorg-1.12.4
PKGREVISION=	1
CATEGORIES=	meta-pkgs x11
MASTER_SITES=	${MASTER_SITE_XORG:=/}
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://xorg.freedesktop.org/
COMMENT=	Modular Xorg meta-package
LICENSE=	2-clause-bsd

META_PACKAGE=	yes

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
DEPENDS+=	modular-xorg-xquartz-[0-9]*:../../x11/modular-xorg-xquartz
.else
DEPENDS+=	modular-xorg-server>=1.12.4:../../x11/modular-xorg-server
DEPENDS+=	modular-xorg-drivers>=1.12:../../meta-pkgs/modular-xorg-drivers
.endif

DEPENDS+=	modular-xorg-libs>=1.0:../../meta-pkgs/modular-xorg-libs
DEPENDS+=	modular-xorg-apps>=1.5:../../meta-pkgs/modular-xorg-apps
DEPENDS+=	modular-xorg-fonts>=1.1:../../meta-pkgs/modular-xorg-fonts
DEPENDS+=	modular-xorg-utils>=1.0:../../meta-pkgs/modular-xorg-utils
DEPENDS+=	xorg-docs-[0-9]*:../../misc/xorg-docs

DEPENDS+=	xf86-input-evdev-[0-9]*:../../linux/xf86-input-evdev
DEPENDS+=	xf86-input-libinput-[0-9]*:../../linux/xf86-input-libinput
DEPENDS+=	xf86-input-synaptics-[0-9]*:../../linux/xf86-input-synaptics

.include "../../mk/bsd.pkg.mk"
