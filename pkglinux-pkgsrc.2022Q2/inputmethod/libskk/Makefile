# $NetBSD: Makefile,v 1.17 2021/12/08 16:02:14 adam Exp $
#

DISTNAME=	libskk-1.0.5
PKGREVISION=	2
CATEGORIES=	inputmethod
MASTER_SITES=	${MASTER_SITE_GITHUB:=ueno/}
GITHUB_PROJECT=	${PKGBASE}
GITHUB_RELEASE=	${PKGVERSION_NOREV}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/ueno/libskk/
COMMENT=	Library to deal with Japnese kana-to-kanji conversion method
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake intltool pkg-config msgfmt
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	libskk/libskk.pc.in

CONFIGURE_ARGS+=	--localedir=${PREFIX}/${PKGLOCALEDIR}/locale

.include "options.mk"

TEST_TARGET=		check

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libgee/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../x11/libxkbcommon/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
