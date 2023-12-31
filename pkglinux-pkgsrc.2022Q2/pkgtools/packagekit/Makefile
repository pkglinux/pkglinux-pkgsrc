# $NetBSD: Makefile,v 1.88 2022/04/18 19:10:04 adam Exp $

DISTNAME=	PackageKit-0.4.0
PKGREVISION=	65
PKGNAME=	${DISTNAME:S/PackageKit/packagekit/}
CATEGORIES=	pkgtools
MASTER_SITES=	http://www.freedesktop.org/software/PackageKit/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.freedesktop.org/software/PackageKit/
COMMENT=	System activated daemon for managing software updates
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake intltool msgfmt autoconf
USE_LANGUAGES=	c c++

BUILD_DEFS+=	VARBASE
BUILD_DEFS+=	PKG_SYSCONFBASE

PKCACHEDIR=	${VARBASE}/cache/PackageKit/downloads
PKLOGDIR=	${VARBASE}/log/PackageKit
PKETCDIR=	${LOCALBASE}/etc/PackageKit

EGDIR=		${PREFIX}/share/examples/packagekit
CONF_FILES=	${EGDIR}/CommandNotFound.conf \
		${PKG_SYSCONFDIR}/PackageKit/CommandNotFound.conf
CONF_FILES+=	${EGDIR}/PackageKit.conf \
		${PKG_SYSCONFDIR}/PackageKit/PackageKit.conf
CONF_FILES+=	${EGDIR}/Vendor.conf \
		${PKG_SYSCONFDIR}/PackageKit/Vendor.conf
CONF_FILES+=	${EGDIR}/org.freedesktop.PackageKit.conf \
		${PKG_SYSCONFDIR}/dbus-1/system.d/org.freedesktop.PackageKit.conf
CONF_FILES+=	${EGDIR}/org.freedesktop.PackageKitTestBackend.conf \
		${PKG_SYSCONFDIR}/dbus-1/system.d/org.freedesktop.PackageKitTestBackend.conf

CHECK_INTERPRETER_SKIP+=	lib/pm-utils/sleep.d/95packagekit \
				share/PackageKit/helpers/test_spawn/search-name.sh

CONFIGURE_ARGS+=	--disable-qt
CONFIGURE_ARGS+=	--with-security-framework=polkit
CONFIGURE_ARGS+=	--enable-pkgsrc
CONFIGURE_ARGS+=	--localstatedir=${VARBASE:Q}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFBASE:Q}

PKGCONFIG_OVERRIDE+=	data/packagekit-qt.pc.in
PKGCONFIG_OVERRIDE+=	data/packagekit-glib.pc.in

PY_PATCHPLIST=	yes
PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 0.4.0

REPLACE_PYTHON=	backends/test/helpers/PackageKitDbusTest.py	\
		lib/python/packagekit/client.py		\
		lib/python/packagekit/filter.py		\
		lib/python/packagekit/misc.py

OWN_DIRS+=	${PKCACHEDIR}
OWN_DIRS+=	${PKLOGDIR}
OWN_DIRS+=	${PKETCDIR}

post-extract:
	cp -r ${FILESDIR}/backends-pkgsrc ${WRKSRC}/backends/pkgsrc

pre-configure:
	cd ${WRKSRC} && autoconf -f

.include "../../mk/compiler.mk"
BUILDLINK_TRANSFORM+=	rm:-Werror
BUILDLINK_TRANSFORM+=	rm:-DG_DISABLE_DEPRECATED

.include "../../databases/shared-mime-info/mimedb.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../security/policykit/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
