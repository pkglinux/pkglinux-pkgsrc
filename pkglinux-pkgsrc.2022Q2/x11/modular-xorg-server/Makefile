# $NetBSD: Makefile,v 1.132 2022/04/10 08:53:17 nia Exp $

DISTNAME=	xorg-server-${XORG_VERSION}
PKGNAME=	modular-${DISTNAME}

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Modular X11 server from modular X.org

SPECIAL_PERMS+=		bin/Xorg ${SETUID_ROOT_PERMS}

NOT_FOR_PLATFORM=	Darwin-*-*

CONFLICTS+=		libxcvt-[0-9]*

.include "Makefile.common"

CONFIGURE_ARGS+=	--enable-xorg
CONFIGURE_ARGS+=	--disable-xephyr
CONFIGURE_ARGS+=	--disable-xwayland
CONFIGURE_ARGS+=	--disable-kdrive
CONFIGURE_ARGS+=	--enable-config-udev

.include "options.mk"
.include "../../linux/eudev/buildlink3.mk"

X11_BIN_NAME=	X
.include "../../meta-pkgs/modular-xorg/avoid-duplicate.mk"
.include "../../mk/bsd.pkg.mk"
