# $NetBSD: Makefile,v 1.42 2022/03/28 10:43:35 tnn Exp $
#

DISTNAME=	mxcl-liblastfm-0.3.3-0-gf0b3239
PKGNAME=	liblastfm-0.3.3
PKGREVISION=	31
CATEGORIES=	audio net
MASTER_SITES=	http://download.github.com/

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	https://github.com/mxcl/liblastfm
COMMENT=	Library for accessing last.fm
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/mxcl-liblastfm-1c739eb

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		bash gmake pkg-config
PREPEND_PATH+=		${QTDIR}/bin

HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix ${PREFIX}
#CONFIGURE_ARGS+=	--release
#CPPFLAGS+=		-fPIC
CONFIG_SHELL=		${RUBY}

REPLACE_RUBY+=		admin/Makefile.rb
REPLACE_RUBY+=		admin/findsrc.rb
REPLACE_RUBY+=		admin/lastfm.h.rb
REPLACE_RUBY+=		admin/platform.rb
REPLACE_RUBY+=		admin/qpp
REPLACE_RUBY+=		admin/utils.rb
REPLACE_RUBY+=		admin/which_qmake.rb

pre-configure:
	${LN} -sf ${QTDIR}/bin/qmake ${BUILDLINK_DIR}/bin/

.include "../../audio/libsamplerate/buildlink3.mk"
.include "../../lang/ruby/replace.mk"
BUILDLINK_DEPMETHOD.${RUBY_BASE}=	build
.include "../../lang/ruby/buildlink3.mk"
.include "../../math/fftw/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
