# $NetBSD: Makefile,v 1.13 2022/04/08 05:06:49 markd Exp $

DISTNAME=	carlisle
PKGNAME=	tex-${DISTNAME}-2021
TEXLIVE_REV=	59577

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://ctan.org/pkg/carlisle
COMMENT=	LaTeX packages created by David Carlisle
LICENSE=	lppl-1.3c

DEPENDS+=	tex-cm-[0-9]*:../../fonts/tex-cm
DEPENDS+=	tex-graphics-[0-9]*:../../print/tex-graphics
DEPENDS+=	tex-latex-[0-9]*:../../print/tex-latex
DEPENDS+=	tex-tools-[0-9]*:../../print/tex-tools

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
