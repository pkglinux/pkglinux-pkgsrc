# $NetBSD: Makefile,v 1.6 2015/06/06 20:44:44 krytarowski Exp $

DISTNAME=	gdm-40.0
PKGREVISION=	3
CATEGORIES=	x11 gnome
MASTER_SITES=	${MASTER_SITE_GITHUB:=GNOME/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnome.org/
COMMENT=	Gnome Display Manager
LICENSE=	gnu-gpl-v2

DEPENDS+=	zenity>=3.32.0:../../x11/zenity
CONFLICTS=	gdm-2.[0-9]*

USE_PKGLOCALEDIR=	YES
GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
USE_TOOLS+=		msgfmt pkg-config gdbus-codegen
USE_TOOLS+=		itstool
BUILD_DEFS+=		VARBASE

USE_LANGUAGES=		c c++

CPPFLAGS+=		-DWITH_CONSOLE_KIT=1
CPPFLAGS+=		-DCONSOLEKIT_DIR=\"${PREFIX}/libexec\"

MESON_ARGS+=		-Dlocalstatedir=${VARBASE}
MESON_ARGS+=		--sysconfdir=${EGDIR}
MESON_ARGS+=		-Ddmconfdir=${PKG_SYSCONFDIR}/dm
MESON_ARGS+=		-Dsysconfsubdir=
#MESON_ARGS+=		-Dprefetch=yes
MESON_ARGS+=		-Dplymouth=disabled
#MESON_ARGS+=		-Dsystemd=disabled
MESON_ARGS+=		-Dsystemd-journal=false
MESON_ARGS+=		-Duser-display-server=false
MESON_ARGS+=		-Duser=${GDMOWN}
MESON_ARGS+=		-Dgroup=${GDMGRP}
MESON_ARGS+=		-Ddbus-sys=${PREFIX}/share/examples/dbus-1/system.d
MESON_ARGS+=		-Dgdm-xsession=true
MESON_ARGS+=		-Dwayland-support=false
MESON_ARGS+=		-Ddefault-path="/usr/local/bin:/usr/local/sbin:${PREFIX}/bin:${PREFIX}/sbin:/usr/bin:/usr/sbin:/bin/sbin"
INSTALL_MAKE_FLAGS+=	${MAKE_FLAGS}
INSTALL_MAKE_FLAGS+=	GDM_CUSTOM_CONF=${EGDIR}/custom.conf
INSTALL_MAKE_FLAGS+=	sysconfdir=${EGDIR}
MAKE_ENV+=		CHMOD=${CHMOD:Q} CHOWN=${CHOWN:Q}

.include "options.mk"

.if ${OPSYS} == "SunOS"
CFLAGS+=	-DSunOS
GDMOWN=		daemon
GDMGRP=		other
.else
GDMOWN=		daemon
GDMGRP=		daemon
.endif

# The following forces the X server to start on the 5th virtual terminal.
# This is suboptimal but matches the defaults for the xdm configuration,
# which should work for most installations.  See the definition of
# DEFAULTVT in src/external/mit/xorg/bin/xdm/config/Makefile.
#
# If we do not do this, we hit a very annoying and obscure problem: during
# system startup, gdm starts before init spawns gettys.  If the X server
# is started before init spawns the gettys (which easily happens on slow
# machines), it grabs the first virtual terminal (instead of the first
# "free" one).  Later on, when the first getty is started, it grabs the
# same terminal X used (the first one).  As a result, only one of them
# will receive key presses.  And on slow machines, X will have lost access
# to the keyboard.
.if (${OPSYS} == "NetBSD" || ${OPSYS} == "OpenBSD") && \
    (${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64" || \
     ${MACHINE_ARCH} == "aarch64")
MESON_ARGS+=	-Dinitial-vt=5
.endif

.include "../../devel/meson/build.mk"
.include "../../sysutils/gsettings-desktop-schemas/buildlink3.mk"
.include "../../security/openpam/buildlink3.mk"
.include "../../devel/dconf/buildlink3.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../textproc/iso-codes/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../sysutils/accountsservice/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../security/tcp_wrappers/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
