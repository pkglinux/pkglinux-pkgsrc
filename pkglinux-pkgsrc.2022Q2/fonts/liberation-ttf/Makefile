# $NetBSD: Makefile,v 1.19 2022/02/18 20:33:56 fcambus Exp $

DISTNAME=	liberation-fonts-ttf-2.1.5
PKGNAME=	${DISTNAME:S/-fonts//}
CATEGORIES=	fonts
MASTER_SITES=	${MASTER_SITE_GITHUB:=liberationfonts/}
GITHUB_PROJECT=	liberation-fonts

MAINTAINER=	bartosz.kuzma@gmail.com
HOMEPAGE=	http://www.redhat.com/promo/fonts/
COMMENT=	TrueType fonts from RedHat
LICENSE=	ofl-v1.1

USE_TOOLS+=	gmake

NO_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${DISTNAME:S/-ttf//}

DOCSDIR=	${PREFIX}/share/doc/${PKGBASE}

INSTALLATION_DIRS+=	${DOCSDIR}

BUILD_DEPENDS+=	${PYPKGPREFIX}-fonttools-[0-9]*:../../fonts/py-fonttools
BUILD_DEPENDS+=	fontforge-[0-9]*:../../fonts/fontforge

PYTHON_FOR_BUILD_ONLY=	tool
REPLACE_PYTHON+=	scripts/setisFixedPitch-fonttools.py

do-install:
.for docfile in AUTHORS LICENSE README.md TODO ChangeLog
	${INSTALL_DATA} ${WRKSRC}/${docfile} ${DESTDIR}${DOCSDIR}
.endfor

.include "../../mk/fonts.mk"
.include "../../lang/python/pyversion.mk"
.include "../../mk/bsd.pkg.mk"
