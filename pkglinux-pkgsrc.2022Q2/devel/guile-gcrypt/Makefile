# $NetBSD: Makefile,v 1.7 2022/03/14 15:17:36 nikita Exp $

DISTNAME=	v0.3.0
DIST_SUBDIR=	guile-gcrypt
PKGNAME=	guile-gcrypt-${DISTNAME:S/v//}
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	https://notabug.org/cwebber/guile-gcrypt/archive/

MAINTAINER=	nikita@NetBSD.org
HOMEPAGE=	https://notabug.org/cwebber/guile-gcrypt
COMMENT=	Guile bindings for libgcrypt
LICENSE=	gnu-gpl-v3

WRKSRC=			${WRKDIR}/guile-gcrypt
USE_LANGUAGES=		# none
USE_TOOLS+=		pkg-config makeinfo
INFO_FILES=		yes
GNU_CONFIGURE=		yes
GUILE_NEED_BOOTSTRAP=	yes

CONFIGURE_ARGS+=	--with-libgcrypt-prefix=${BUILDLINK_PREFIX.libgcrypt}

.include "../../lang/guile30/module.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
