# $NetBSD: Makefile,v 1.20 2022/04/10 12:36:01 markd Exp $

DISTNAME=	pstricks
PKGNAME=	tex-${DISTNAME}-3.13
TEXLIVE_REV=	61548

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/pstricks-base
COMMENT=	PostScript macros for TeX
LICENSE=	lppl-1.3c

DEPENDS+=	tex-auto-pst-pdf-[0-9]*:../../graphics/tex-auto-pst-pdf
DEPENDS+=	tex-latex-bin-[0-9]*:../../print/tex-latex-bin
DEPENDS+=	tex-xkeyval-[0-9]*:../../print/tex-xkeyval

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
