# $NetBSD: Makefile,v 1.86 2022/04/18 19:09:49 adam Exp $

PKGVER=			0.8.4
DISTNAME=		compizconfig-python-${PKGVER}
PKGNAME=		${PYPKGPREFIX}-compizconfig-${PKGVER}
PKGREVISION=		68
CATEGORIES=		devel gnome
MASTER_SITES=		http://releases.compiz.org/${PKGVER}/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://compiz.org/
COMMENT=		Python bindings for libcompizconfig
LICENSE=		gnu-gpl-v2

BUILD_DEPENDS+=		${PYPKGPREFIX}-pyrex>=0.9.3:../../lang/py-pyrex

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config gmake

PY_PATCHPLIST=		yes
PYTHON_VERSIONS_ACCEPTED=	 27 # py-pyrex

.include "../../wm/compiz/buildlink3.mk"
.include "../../devel/libcompizconfig/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
