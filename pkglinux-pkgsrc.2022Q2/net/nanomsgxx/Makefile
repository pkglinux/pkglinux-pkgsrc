# $NetBSD: Makefile,v 1.2 2021/12/28 11:56:52 adam Exp $

DISTNAME=	nanomsgxx-0.2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=achille-roussel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/achille-roussel/nanomsgxx/
COMMENT=	Nanomsg binding for C++11
LICENSE=	mit

USE_LANGUAGES=	c c++

BUILD_DEPENDS+=	waf>=1.8.4:../../devel/waf

WAF_HAS_MANDIR=		no
WAF_REPLACE_EXECUTABLE=	yes

PKGCONFIG_OVERRIDE+=	libnnxx.pc.in

.include "../../net/nanomsg/buildlink3.mk"
.include "../../devel/waf/waf.mk"
.include "../../mk/bsd.pkg.mk"
