# $NetBSD: Makefile,v 1.3 2022/06/01 20:08:14 adam Exp $

DISTNAME=	node-v14.19.3
EXTRACT_SUFX=	.tar.xz

USE_LANGUAGES=	c gnu++14

.include "../../mk/bsd.prefs.mk"

# XXX: figure out a way to add rpaths to torque
MAKE_ENV+=	LD_LIBRARY_PATH=${PREFIX}/lib

CONFIGURE_ARGS+=	--shared-brotli
CONFIGURE_ARGS+=	--shared-nghttp2
CONFIGURE_ARGS+=	--with-intl=system-icu
CONFIGURE_ARGS+=	--without-corepack

PYTHON_VERSIONS_ACCEPTED=	27

CHECK_PORTABILITY_SKIP+=	tools/macos-installer/pkgbuild/npm/scripts/preinstall

.if ${MACHINE_ARCH} == "i386"
# required for SSE2 code under i386.
CXXFLAGS+=	-mstackrealign
.endif

.include "../../lang/nodejs/options.mk"

# Node turns on -latomic for arm, mips and ppc.
.if !empty(MACHINE_ARCH:M*arm*) || \
    !empty(MACHINE_ARCH:M*powerpc*) || \
    !empty(MACHINE_ARCH:M*mips*)
.include "../../devel/libatomic/buildlink3.mk"
.endif

.include "../../lang/nodejs/Makefile.common"
.include "../../archivers/brotli/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
# Requires nghttp2_option_set_max_settings
BUILDLINK_API_DEPENDS.nghttp2+=	nghttp2>=1.41.0
.include "../../www/nghttp2/buildlink3.mk"
.include "../../mk/atomic64.mk"
.include "../../mk/bsd.pkg.mk"
