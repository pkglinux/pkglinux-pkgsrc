# $NetBSD: Makefile,v 1.117 2022/04/18 19:10:53 adam Exp $

DISTNAME=		meld-3.21.1
PKGREVISION=		1
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/meld/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=		.tar.xz

MAINTAINER=		wiz@NetBSD.org
HOMEPAGE=		https://meldmerge.org/
COMMENT=		Visual diff and merge tool
LICENSE=		gnu-gpl-v2

BUILD_DEPENDS+=		${PYPKGPREFIX}-distro-[0-9]*:../../devel/py-distro
DEPENDS+=		${PYPKGPREFIX}-gobject3>=3.30:../../devel/py-gobject3
DEPENDS+=		gsettings-desktop-schemas-[0-9]*:../../sysutils/gsettings-desktop-schemas
DEPENDS+=		dconf-[0-9]*:../../devel/dconf

USE_TOOLS+=		msgfmt pkg-config itstool
# only used when building the python way (not meson)
USE_TOOLS+=		intltool

SUBST_CLASSES+=		python3
SUBST_FILES.python3=	meson.build
SUBST_SED.python3=	-e "s,python.find_installation('python3',python.find_installation('${PYTHONBIN}',"
SUBST_SED.python3+=	-e "s,'python3','python-${PYVERSSUFFIX}',"
SUBST_STAGE.python3=	pre-configure
SUBST_MESSAGE.python3=	Fix python binary name.

# Compiled files are not installed, see
# https://gitlab.gnome.org/GNOME/meld/-/issues/456
# post-install:
# something like:
# python -m compileall "$pkgdir"/path/to/python3/files

PYTHON_VERSIONS_INCOMPATIBLE=	27 # not supported any longer
PLIST_SUBST+=			PYSITELIB=${PYSITELIB}
REPLACE_PYTHON+=		bin/meld

SUBST_CLASSES+=		man
SUBST_FILES.man=	setup.py
SUBST_SED.man+=		-e "s,share/man/man1,${PKGMANDIR}/man1,"
SUBST_STAGE.man=	pre-build
SUBST_MESSAGE.man=	Fixing man page installation path.

.include "../../devel/py-gobject3-common/buildlink3.mk"
.include "../../graphics/adwaita-icon-theme/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
BUILDLINK_API_DEPENDS.py-cairo+=	${PYPKGPREFIX}-cairo>=1.15.0
.include "../../graphics/py-cairo/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/gettext-tools/msgfmt-desktop.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.48.0
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
BUILDLINK_API_DEPENDS.gtk3+=	gtk3+>=3.20
.include "../../lang/python/application.mk"
.include "../../x11/gtk3/buildlink3.mk"
BUILDLINK_API_DEPENDS.gtksourceview4?=	gtksourceview4>=4.6.0nb1
.include "../../x11/gtksourceview4/buildlink3.mk"
.include "../../lang/python/egg.mk"
# not ready yet as of 3.21.0
#.include "../../devel/meson/build.mk"
.include "../../mk/bsd.pkg.mk"
