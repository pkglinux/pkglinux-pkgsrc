# $NetBSD: Makefile,v 1.13 2022/03/28 10:43:39 tnn Exp $

DISTNAME=	sphinxbase-0.8
PKGREVISION=	8
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cmusphinx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://cmusphinx.sourceforge.net/
COMMENT=	CMUSphinx speech recognition support library
LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	bison perl:run pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	sphinxbase.pc.in

REPLACE_PERL+=		src/sphinx_lmtools/sphinx_lm_sort

CONFIGURE_ARGS+=	--without-lapack
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ENV+=		SAMPLERATE_LIBS=${LIBOSSAUDIO}

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
