# $NetBSD: Makefile,v 1.14 2021/12/08 16:01:59 adam Exp $

DISTNAME=	librelp-1.2.16
PKGREVISION=	6
CATEGORIES=	devel
MASTER_SITES=	http://download.rsyslog.com/librelp/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.librelp.com/
COMMENT=	Reliable Event Logging Protocol core library
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config

CONFIGURE_ARGS.SunOS+=	ac_cv_func_epoll_create1=no
CONFIGURE_ARGS.SunOS+=	ac_cv_func_epoll_create=no
CONFIGURE_ARGS.SunOS+=	ac_cv_header_sys_epoll_h=no
# Needed for obsolete NI_MAXHOST
CPPFLAGS.SunOS+=	-D__EXTENSIONS__

PKGCONFIG_OVERRIDE+=	relp.pc.in

TEST_TARGET=	check

.include "../../security/gnutls/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
