# $NetBSD: Makefile,v 1.14 2021/11/13 10:28:27 nia Exp $

DISTNAME=	libxmp-4.5.0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmp/}

MAINTAINER=	rxg@NetBSD.org
HOMEPAGE=	http://xmp.sourceforge.net/
COMMENT=	Player for many different Amiga and PC module formats
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake pkg-config
GNU_CONFIGURE=	yes

INSTALLATION_DIRS=	bin lib
INSTALL_MAKE_FLAGS+=	INSTALL=${INSTALL:Q}

CONFIGURE_ENV.SunOS+=	ac_cv_c_flag_f_visibility_hidden=no

.include "../../mk/bsd.pkg.mk"
