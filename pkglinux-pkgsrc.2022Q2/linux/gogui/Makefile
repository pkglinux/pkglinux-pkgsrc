# $NetBSD: Makefile,v 1.10 2020/03/20 11:57:41 nia Exp $
#

PKGNAME=		gogui-1.4.9
DISTNAME=		${PKGNAME}-src
CATEGORIES=		linux
//MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gogui/}
EXTRACT_SUFX=		.tar.gz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://sourceforge.net/projects/gogui
COMMENT=		GUI for Go-playing programs

WRKSRC=			${WRKDIR}/${PKGNAME}

REPLACE_BASH+=		bin/*
USE_TOOLS+=		bash:run

SUBST_CLASSES+=		gogui
SUBST_STAGE.gogui=	do-configure
SUBST_MESSAGE.gogui=	Fixing hard-coded paths.
SUBST_FILES.gogui=	bin/*
SUBST_SED.gogui=	-e 's;^\(GOGUI_LIB\)=.*;\1="${LIBDIR}";'

USE_JAVA2=		yes
USE_TOOLS+=		printf
USE_TOOLS+=		ant

LIBDIR=			${PREFIX}/share/gogui/lib
DOCDIR=			${PREFIX}/share/doc/gogui
INSTALLATION_DIRS=	bin ${LIBDIR} ${DOCDIR} ${PKGMANDIR}/man1

do-build:
	cd ${WRKSRC} && ant -Dquaqua.ignore=true -Ddocbook-xsl.dir=${PREFIX}/share/xsl/docbook build

do-install:
	cd ${WRKSRC}/bin && ${INSTALL_SCRIPT} * ${DESTDIR}${PREFIX}/bin/.
	cd ${WRKSRC}/lib && ${INSTALL_DATA} *.jar ${DESTDIR}${LIBDIR}/.
	cd ${WRKSRC}/doc/manual/html && ${INSTALL_DATA} *.html \
		${DESTDIR}${DOCDIR}/.
	cd ${WRKSRC}/doc/manual/man && ${INSTALL_MAN} *.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

#.include "../../textproc/docbook-xsl/buildlink3.mk"
.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
