# $NetBSD: Makefile,v 1.38 2021/12/08 16:05:18 adam Exp $
#

DISTNAME=		scim-fcitx.3.1.1
PKGNAME=		scim-fcitx-3.1.1
PKGREVISION=		34
CATEGORIES=		inputmethod
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scim/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://github.com/scim-im/scim
COMMENT=		Fcitx ported to SCIM
LICENSE=		gnu-gpl-v2

CONFLICTS=		fcitx-[0-9]*

WRKSRC=			${WRKDIR}/fcitx

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes

MAKE_JOBS_SAFE=		no

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../inputmethod/scim/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
