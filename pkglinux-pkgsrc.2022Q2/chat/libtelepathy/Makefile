# $NetBSD: Makefile,v 1.33 2022/04/18 19:10:30 adam Exp $

DISTNAME=	libtelepathy-0.3.3
PKGREVISION=	17
CATEGORIES=	chat
MASTER_SITES=	http://telepathy.freedesktop.org/releases/libtelepathy/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://telepathy.freedesktop.org/wiki/
COMMENT=	Unified framework for many different kinds of real-time communications
LICENSE=	gnu-lgpl-v2.1

BUILD_DEPENDS+=		${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake pkg-config

PKGCONFIG_OVERRIDE+=	libtelepathy.pc.in

PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 0.3.3

.include "../../lang/python/pyversion.mk"
CONFIGURE_ENV+=		ac_cv_prog_PYTHON=${PYTHONBIN}

.include "../../chat/telepathy-glib/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.10.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../lang/python/application.mk"
BUILDLINK_API_DEPENDS.dbus-glib+=	dbus-glib>=0.73
.include "../../sysutils/dbus-glib/buildlink3.mk"
BUILDLINK_API_DEPENDS.dbus+=		dbus>=0.93
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
