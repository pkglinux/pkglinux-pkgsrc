# $NetBSD: Makefile,v 1.29 2022/05/24 18:51:56 jaapb Exp $
#

DISTNAME=		wyrd-1.4.6
PKGREVISION=		15
CATEGORIES=		time
#MASTER_SITES=		http://pessimization.com/software/wyrd/

MAINTAINER=		pkgsrc-users@NetBSD.org
#HOMEPAGE=		http://pessimization.com/software/wyrd/
COMMENT=		Text-based front-end to Remind
LICENSE=		gnu-gpl-v2

DEPENDS+=		remind>=3.00.24:../../time/remind

USE_PKGLOCALEDIR=	yes
USE_NCURSES=		yes # chgat(), typeahead(), ...
USE_TOOLS+=		gmake
CONFIGURE_ARGS+=	--with-ncurses
GNU_CONFIGURE=		yes
MAKE_JOBS_SAFE=		no

CONF_FILES+=		${PREFIX}/share/examples/wyrd/wyrdrc \
			${PKG_SYSCONFDIR}/wyrdrc

.include "../../devel/ncurses/buildlink3.mk"
.include "../../lang/ocaml/buildlink3.mk"
.include "../../lang/camlp4/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
