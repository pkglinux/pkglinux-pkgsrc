# $NetBSD: Makefile,v 1.30 2022/04/18 19:10:08 adam Exp $

DISTNAME=	libplist-1.12
PKGREVISION=	7
CATEGORIES=	textproc
MASTER_SITES=	http://www.libimobiledevice.org/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.libimobiledevice.org/
COMMENT=	Handle Apple Binary and XML Property Lists
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

GNU_CONFIGURE=	yes
CONFIG_SHELL=	bash
USE_TOOLS+=	bash gmake pkg-config
USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=		libplist++.pc.in
PKGCONFIG_OVERRIDE+=		libplist.pc.in
PY_PATCHPLIST=			yes
PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 1.8

.include "../../devel/py-cython/buildlink3.mk"
.include "../../devel/py-cython/tool.mk"
.include "../../lang/python/extension.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
