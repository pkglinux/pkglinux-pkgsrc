# $NetBSD: Makefile,v 1.11 2022/04/18 04:37:13 markd Exp $

DISTNAME=	collection-context
PKGNAME=	texlive-${DISTNAME}-2022
CATEGORIES=	meta-pkgs
MASTER_SITES=	# empty
TEXLIVE_REV=	54074

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.tug.org/texlive/
COMMENT=	ConTeXt and packages

DEPENDS+=	texlive-collection-basic-[0-9]*:../../meta-pkgs/texlive-collection-basic

DEPENDS+=	tex-context-[0-9]*:../../print/tex-context
DEPENDS+=	tex-jmn-[0-9]*:../../fonts/tex-jmn
DEPENDS+=	tex-context-account-[0-9]*:../../print/tex-context-account
DEPENDS+=	tex-context-algorithmic-[0-9]*:../../print/tex-context-algorithmic
DEPENDS+=	tex-context-animation-[0-9]*:../../print/tex-context-animation
DEPENDS+=	tex-context-annotation-[0-9]*:../../print/tex-context-annotation
DEPENDS+=	tex-context-bnf-[0-9]*:../../print/tex-context-bnf
DEPENDS+=	tex-context-chromato-[0-9]*:../../print/tex-context-chromato
DEPENDS+=	tex-context-cmscbf-[0-9]*:../../print/tex-context-cmscbf
DEPENDS+=	tex-context-cmttbf-[0-9]*:../../print/tex-context-cmttbf
DEPENDS+=	tex-context-construction-plan-[0-9]*:../../print/tex-context-construction-plan
DEPENDS+=	tex-context-cyrillicnumbers-[0-9]*:../../print/tex-context-cyrillicnumbers
DEPENDS+=	tex-context-degrade-[0-9]*:../../print/tex-context-degrade
DEPENDS+=	tex-context-fancybreak-[0-9]*:../../print/tex-context-fancybreak
DEPENDS+=	tex-context-filter-[0-9]*:../../print/tex-context-filter
DEPENDS+=	tex-context-french-[0-9]*:../../print/tex-context-french
DEPENDS+=	tex-context-fullpage-[0-9]*:../../print/tex-context-fullpage
DEPENDS+=	tex-context-gantt-[0-9]*:../../print/tex-context-gantt
DEPENDS+=	tex-context-gnuplot-[0-9]*:../../print/tex-context-gnuplot
DEPENDS+=	tex-context-handlecsv-[0-9]*:../../print/tex-context-handlecsv
DEPENDS+=	tex-context-inifile-[0-9]*:../../print/tex-context-inifile
DEPENDS+=	tex-context-layout-[0-9]*:../../print/tex-context-layout
DEPENDS+=	tex-context-letter-[0-9]*:../../print/tex-context-letter
DEPENDS+=	tex-context-lettrine-[0-9]*:../../print/tex-context-lettrine
DEPENDS+=	tex-context-mathsets-[0-9]*:../../print/tex-context-mathsets
# context-notes-zh-cn is documentation only
DEPENDS+=	tex-context-rst-[0-9]*:../../print/tex-context-rst
DEPENDS+=	tex-context-ruby-[0-9]*:../../print/tex-context-ruby
DEPENDS+=	tex-context-simplefonts-[0-9]*:../../print/tex-context-simplefonts
DEPENDS+=	tex-context-simpleslides-[0-9]*:../../print/tex-context-simpleslides
DEPENDS+=	tex-context-title-[0-9]*:../../print/tex-context-title
DEPENDS+=	tex-context-transliterator-[0-9]*:../../print/tex-context-transliterator
DEPENDS+=	tex-context-typearea-[0-9]*:../../print/tex-context-typearea
DEPENDS+=	tex-context-typescripts-[0-9]*:../../print/tex-context-typescripts
DEPENDS+=	tex-context-vim-[0-9]*:../../print/tex-context-vim
DEPENDS+=	tex-context-visualcounter-[0-9]*:../../print/tex-context-visualcounter
# npp-for-context is documentation only

META_PACKAGE=	yes

.include "../../mk/bsd.pkg.mk"
