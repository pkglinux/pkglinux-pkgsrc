# $NetBSD: Makefile,v 1.9 2021/12/08 16:06:24 adam Exp $

QTKEYCHAINVER=	0.4.0
DISTNAME=	qtkeychain-${QTKEYCHAINVER}
PKGNAME=	qt4-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	security
MASTER_SITES=	-https://github.com/frankosterfeld/qtkeychain/archive/v${QTKEYCHAINVER}.tar.gz

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/frankosterfeld/qtkeychain/
COMMENT=	Platform-independent Qt API for storing passwords securely
LICENSE=	2-clause-bsd

USE_LANGUAGES=	c c++

USE_CMAKE=	yes

.include "../../x11/qt4-qdbus/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
