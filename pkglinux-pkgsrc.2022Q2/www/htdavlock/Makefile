# $NetBSD: Makefile,v 1.16 2021/12/08 16:06:56 adam Exp $

DISTNAME=	htdavlock-0.2
PKGREVISION=	13
CATEGORIES=	www
MASTER_SITES=	https://ftp.espci.fr/pub/htdavlock/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://ftp.espci.fr/pub/htdavlock/
COMMENT=	Apache mod_dav_fs lock database management tool
LICENSE=	original-bsd

GNU_CONFIGURE=		yes
GNU_CONFIGURE_APXS2=	no
USE_TOOLS+=		pkg-config
CONFIGURE_ARGS+=       --with-apxs=${APXS}

.include "../../devel/apr/buildlink3.mk"
.include "../../devel/apr-util/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/apache.mk"
.include "../../mk/bsd.pkg.mk"
