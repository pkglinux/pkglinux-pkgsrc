# $NetBSD: Makefile,v 1.85 2022/04/30 14:24:07 wiz Exp $

DISTNAME=		tortoisehg-6.1.1
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		devel python
MASTER_SITES=		https://www.mercurial-scm.org/release/tortoisehg/targz/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://tortoisehg.bitbucket.io/
COMMENT=		GUI for Mercurial
LICENSE=		gnu-gpl-v2

BUILD_DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx
DEPENDS+=	${PYPKGPREFIX}-iniparse>=0.4:../../textproc/py-iniparse
DEPENDS+=	${PYPKGPREFIX}-mercurial>=5.0.0:../../devel/py-mercurial
DEPENDS+=	${PYPKGPREFIX}-pygments-[0-9]*:../../textproc/py-pygments

USE_TOOLS+=		pax

REPLACE_PYTHON+=	thg

thg_icon=		/share/pixmaps/tortoisehg/icons/thg_logo.ico
SUBST_CLASSES+=		df
SUBST_STAGE.df=		post-configure
SUBST_MESSAGE.df=	Fixing icon reference in desktop file
SUBST_FILES.df=		contrib/thg.desktop
SUBST_SED.df=		-e 's:thg_logo:${PREFIX}${thg_icon}:1'

INSTALLATION_DIRS+=	share/applications
INSTALLATION_DIRS+=	share/doc/tortoisehg

PYTHON_SELF_CONFLICT=	yes

PYTHON_VERSIONS_INCOMPATIBLE=	27

pre-build:
	${RUN} cd ${WRKSRC}/doc && ${MAKE_PROGRAM} SPHINXBUILD=sphinx-build-${PYVERSSUFFIX} html
	${RUN} rm ${WRKSRC}/doc/build/html/.buildinfo
	# conflicts with mercurial
	# https://foss.heptapod.net/mercurial/tortoisehg/thg/-/issues/4629
	${RM} ${WRKSRC}/hgext3rd/__init__.py

post-install:
	${INSTALL_DATA} ${WRKSRC}/contrib/thg.desktop ${DESTDIR}${PREFIX}/share/applications/thg.desktop
	${INSTALL_DATA} ${WRKSRC}/COPYING.txt ${DESTDIR}${PREFIX}/share/doc/tortoisehg
	cd ${WRKSRC}/doc/build && ${PAX} -pp -rw html ${DESTDIR}${PREFIX}/share/doc/tortoisehg

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/py-qt5-qscintilla/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
