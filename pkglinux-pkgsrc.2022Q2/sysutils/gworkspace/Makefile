# $NetBSD: Makefile,v 1.59 2022/04/18 19:12:05 adam Exp $
#

DISTNAME=	gworkspace-0.9.1
PKGREVISION=	23
CATEGORIES=	sysutils gnustep
MASTER_SITES=	http://www.gnustep.it/enrico/gworkspace/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnustep.org/experience/GWorkspace.html
COMMENT=	GNUstep Workspace manager
LICENSE=	gnu-gpl-v2

CONFLICTS+=	GWLib-[0-9]*

USE_TOOLS+=		gs:run file:run sh:run
USE_LANGUAGES=		objc
CONFIGURE_ARGS+=	--with-sh=${TOOLS_PATH.sh:Q}
CONFIGURE_ARGS+=	--with-file=${TOOLS_PATH.file:Q}
MAKE_FILE=		GNUmakefile

.include "../../x11/gnustep-back/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
