# $NetBSD: Makefile,v 1.8 2022/02/26 03:57:46 pho Exp $

DISTNAME=	happy-1.20.0
PKGNAME=	${DISTNAME}
PKGREVISION=	4
CATEGORIES=	devel

MAINTAINER=	esg@sdf.lonestar.org
COMMENT=	Parser generator for Haskell
LICENSE=	modified-bsd

USE_TOOLS+=	autoconf gmake
BUILD_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl
BUILD_DEPENDS+=	libxml2-[0-9]*:../../textproc/libxml2
BUILD_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt

CONFIGURE_ENV+=	fp_cv_dir_docbook_xsl=${PREFIX}/share/xsl/docbook
CONFIGURE_ENV+=	ac_cv_path_DbLatexCmd= # empty
pre-configure:
	${RUN}cd ${WRKSRC}/doc && autoconf && ${PKGSRC_SETENV} ${CONFIGURE_ENV} \
		${CONFIG_SHELL} ${CONFIG_SHELL_FLAGS} ./configure

post-build:
	${RUN}cd ${WRKSRC}/doc && ${GMAKE}

INSTALLATION_DIRS+=	${PKGMANDIR}/man1 ${PREFIX}/share/doc/${PKGBASE}
post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/happy.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	for f in ${WRKSRC}/doc/happy/*; do \
		${INSTALL_DATA} "$$f" ${DESTDIR}${PREFIX}/share/doc/${PKGBASE}/; \
	done

.include "../../mk/haskell.mk"
.include "../../mk/bsd.pkg.mk"
