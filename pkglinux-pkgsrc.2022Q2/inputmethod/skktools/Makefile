# $NetBSD: Makefile,v 1.13 2021/12/08 16:05:19 adam Exp $
#

DISTNAME=	skktools-1.3.1
PKGREVISION=	9
CATEGORIES=	japanese inputmethod
MASTER_SITES=	http://openlab.ring.gr.jp/skk/tools/

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://openlab.ring.gr.jp/skk/
COMMENT=	SKK dictionary manipulation tools

CONFLICTS=	skkserv<3.9.4nb7

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-gdbm

.include "options.mk"

SUBST_CLASSES+=		prefix
SUBST_STAGE.prefix=	pre-configure
SUBST_FILES.prefix=	configure
SUBST_SED.prefix=	-e 's|/usr/local|${PREFIX}|g'

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Linux"
.include "../../databases/gdbm_compat/buildlink3.mk"
.endif

.include "../../mk/bsd.pkg.mk"
