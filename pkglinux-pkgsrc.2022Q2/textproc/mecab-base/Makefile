# $NetBSD: Makefile,v 1.12 2022/05/24 13:03:25 nia Exp $
#

.include "../../textproc/mecab/Makefile.common"

DISTNAME=		mecab-${MECAB_VERSION}
PKGNAME=		mecab-base-${MECAB_VERSION}

COMMENT=		Yet Another Part-of-Speech and Morphological Analyzer
LICENSE=		gnu-gpl-v2 OR gnu-lgpl-v2.1 OR modified-bsd

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
OWN_DIRS=		${PREFIX:Q}/lib/mecab/dic

.include "../../mk/bsd.prefs.mk"
.include "../../mk/compiler.mk"

.if ${OPSYS} == "SunOS"
USE_TOOLS+=		gmake
.  if !empty(CC_VERSION:Mgcc-4.[6-9].*)
CFLAGS.SunOS+=		-D_XOPEN_SOURCE=600 -std=c99
.  endif
.endif

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

TEST_TARGET=		check

EGDIR=			${PREFIX}/share/examples/mecab
CONF_FILES=		${EGDIR:Q}/mecabrc ${PKG_SYSCONFDIR:Q}/mecabrc

SUBST_CLASSES+=		confdir
SUBST_STAGE.confdir=	pre-configure
SUBST_FILES.confdir=	Makefile.in
SUBST_SED.confdir=	-e "s,\$$(sysconfdir),${EGDIR},"

SUBST_CLASSES+=		pthread
SUBST_STAGE.pthread=	pre-configure
SUBST_FILES.pthread=	configure
SUBST_SED.pthread=	-e 's|-lpthread||g'

PTHREAD_AUTO_VARS=	yes

# No TLS support for NetBSD.
.if ${OPSYS} == "NetBSD" && ${OPSYS_VERSION} < 060000
SUBST_SED.pthread+=	-e 's|enable_tls=yes|enable_tls=no|g'
.endif

# require i486 features for atomic_op.
.if ${MACHINE_ARCH} == "i386"
CFLAGS+=	-march=i486
CXXFLAGS+=	-march=i486
.endif

.include "../../mk/pthread.buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
