# $NetBSD: Makefile,v 1.18 2022/05/14 22:25:42 dholland Exp $

VERSION=	1.4.632
DATE_TIME=	20210106.2144
HASH=		f29aada
DISTNAME=	w3m-el-snapshot_${VERSION}+0.${DATE_TIME}.${HASH}
PKGNAME=	${EMACS_PKGNAME_PREFIX}emacs-${DISTNAME:S/-el-snapshot_/-/:S/+0//:S/.${HASH}//}
PKGREVISION=	1
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/w/w3m-el-snapshot/}
EXTRACT_SUFX=	.orig.tar.gz

MAINTAINER=	makoto@ki.nu
HOMEPAGE=	http://emacs-w3m.namazu.org/
COMMENT=	Emacs frontend for w3m browser
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	makeinfo gzip autoconf
INFO_FILES=	yes

DEPENDS+=	w3m{,-img}>=0.5.2nb3:../../www/w3m

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--srcdir=${WRKSRC}
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}
CONFIGURE_ENV+=		GAMEOWN=${GAMES_USER}
BUILD_TARGET=
WRKSRC=			${WRKDIR}/${PKGBASE}-${PKGBASE}-${HASH}

SUBST_CLASSES+=		paths
SUBST_MESSAGE.paths=	Fixing paths.
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	w3m.el
SUBST_SED.paths=	-e 's|@W3M@|${PREFIX}/bin/w3m|g'

BUILD_DEFS+=		VARBASE
BUILD_DEFS+=		GAMEDATAMODE

.include "options.mk"

.include "../../devel/apel/buildlink3.mk"
.include "../../devel/flim/buildlink3.mk"
.include "../../devel/semi/buildlink3.mk"
.include "../../editors/mule-ucs/buildlink3.mk"

pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../mk/bsd.pkg.mk"
