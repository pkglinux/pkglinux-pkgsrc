# $NetBSD: Makefile,v 1.3 2022/01/25 12:55:43 ryoon Exp $

DISTNAME=	olm-3.2.10
CATEGORIES=	security
MASTER_SITES=	https://gitlab.matrix.org/matrix-org/olm/-/archive/3.2.10/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gitlab.matrix.org/matrix-org/olm
COMMENT=	Implementation of the Double Ratchet cryptographic ratchet
LICENSE=	apache-2.0

USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake

PKGCONFIG_OVERRIDE+=	olm.pc.in

.include "../../mk/bsd.pkg.mk"
