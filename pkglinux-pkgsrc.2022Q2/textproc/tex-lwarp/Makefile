# $NetBSD: Makefile,v 1.14 2022/04/15 04:05:46 markd Exp $

DISTNAME=	lwarp
PKGNAME=	tex-${DISTNAME}-0.905
TEXLIVE_REV=	62952

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/lwarp
COMMENT=	Converts LaTeX to HTML
LICENSE=	lppl-1.3c

DEPENDS+=	poppler-utils-[0-9]*:../../print/poppler-utils
DEPENDS+=	tex-luatex-[0-9]*:../../print/tex-luatex
DEPENDS+=	tex-pdfcrop-[0-9]*:../../graphics/tex-pdfcrop
DEPENDS+=	tex-xindy-[0-9]*:../../textproc/tex-xindy

REPLACE_TEXLUA=	bin/lwarpmk

INSTALLATION_DIRS+=	bin

post-extract:
	${MKDIR} ${WRKSRC}/bin
	${MV} ${WRKSRC}/texmf-dist/scripts/lwarp/lwarpmk.lua ${WRKSRC}/bin/lwarpmk

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
