# $NetBSD: Makefile,v 1.1 2022/04/20 17:33:05 nia Exp $

DISTNAME=	unibilium-2.1.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=neovim/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/neovim/unibilium
COMMENT=	Basic terminfo library
LICENSE=	gnu-lgpl-v3

USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake perl

MAKE_FLAGS+=	PREFIX=${PREFIX}
MAKE_FLAGS+=	MANDIR=${PREFIX}/${PKGMANDIR}

PKGCONFIG_OVERRIDE+=	unibilium.pc.in

.include "../../mk/bsd.pkg.mk"
