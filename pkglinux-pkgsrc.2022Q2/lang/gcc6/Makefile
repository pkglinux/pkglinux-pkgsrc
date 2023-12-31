# $NetBSD: Makefile,v 1.36 2022/05/21 12:21:43 nia Exp $

GCC_PKGNAME=		gcc6
.include		"version.mk"

DISTNAME=	gcc-${GCC6_DIST_VERSION}
PKGNAME=	${GCC_PKGNAME}-${GCC6_DIST_VERSION}
## When bumping the PKGREVISION of this package the PKGREVISION of
## lang/gcc6-libs needs to be bumped to be at least 1 more than the
## PKGREVISION of this package!
PKGREVISION=	7
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gcc/gcc-${GCC6_DIST_VERSION}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gcc.gnu.org/
COMMENT=	The GNU Compiler Collection (GCC) - 6 Release Series
LICENSE=	gnu-gpl-v2 AND gnu-gpl-v3 AND gnu-lgpl-v2 AND gnu-lgpl-v3

DISTFILES=		${DEFAULT_DISTFILES}
EXTRACT_ONLY=		${DEFAULT_DISTFILES}

# RELRO not applied correctly (needs investigation)
RELRO_SUPPORTED=	no
# Relocations result in a linker error on AArch64, but not x86.
MKPIE_SUPPORTED=	no
CHECK_RELRO_SKIP+=	${GCC_PKGNAME}/lib/*

NOT_FOR_PLATFORM=	Interix-*-*

USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake makeinfo sed:run tar:build
USE_TOOLS.NetBSD+=	gsed

GNU_CONFIGURE=		yes
GNU_CONFIGURE_STRICT=	no # has sub-configures
## Build outside ${WRKSRC}
OBJDIR=			../build
CONFIGURE_DIRS=		${OBJDIR}
CONFIGURE_SCRIPT=	../${DISTNAME}/configure
GCC_SUBPREFIX=		${GCC_PKGNAME}
GCC_PREFIX=		${PREFIX}/${GCC_SUBPREFIX}
GNU_CONFIGURE_PREFIX=	${GCC_PREFIX}
INFO_FILES=		yes
CONFIGURE_ARGS+=	--disable-libstdcxx-pch
GCC_TARGET_MACHINE=	${MACHINE_GNU_PLATFORM}

UNLIMIT_RESOURCES+=	datasize
UNLIMIT_RESOURCES+=	stacksize

SUBST_CLASSES+=		vars
SUBST_MESSAGE.vars=	Setting target machine name path in ${SUBST_FILES.vars}
SUBST_STAGE.vars=	pre-configure
SUBST_FILES.vars=	gcc/Makefile.in
SUBST_VARS.vars=	GCC_TARGET_MACHINE

# These programs use [[ ... ]] and are not needed for the build.
CHECK_PORTABILITY_SKIP+= \
	contrib/prepare_patch.sh \
	contrib/patch_tester.sh

.include "../../mk/bsd.prefs.mk"

LANGS=			c

# In some cases LINKER_RPATH_FLAG needs a trailing space.
LINKER_RPATH_FLAG:=	${LINKER_RPATH_FLAG:S/-rpath/& /}

## The Library rpath to use in end programs.
LDFLAGS_FOR_TARGET=	${LDFLAGS:M${COMPILER_RPATH_FLAG}*:N*/usr/lib*}

# The "-static-libstdc++ -static-libgcc" flags are normally added to the
# boot-ldflags by configure but because we are supply the boot-ldflags
# we mash supply them.
BOOT_LDFLAGS=		-static-libstdc++ -static-libgcc ${LDFLAGS_FOR_TARGET}
# Needed on Darwin when LDFLAGS point to a SDK
BOOT_LDFLAGS+=		${LDFLAGS:M-Wl,-syslibroot*}
# GCC does not understand this option; remove it, or stage build will fail
BUILDLINK_TRANSFORM+=	rm:-stdlib=libc++

# Disable fixincludes on SmartOS, header changes result in broken includes
# being generated, see https://github.com/joyent/pkgsrc-legacy/issues/270
.if ${OS_VARIANT} == "SmartOS"
SUBST_CLASSES+=		fixinc
SUBST_STAGE.fixinc=	pre-configure
SUBST_FILES.fixinc=	gcc/Makefile.in
SUBST_SED.fixinc=	-e "s,\./fixinc.sh,-c true,"
.endif

.include "options.mk"

## For graphite support.
.if !empty(PKG_OPTIONS:Mgcc-graphite)

post-extract:
#	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/01_all_default-fortify-source.patch
post-extract:
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/02_all_default-warn-format-security.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/03_all_default-warn-trampolines.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/04_all_default-ssp-fix.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/05_all_alpha-mieee-default.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/06_all_arm_armv4t-default.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/07_all_ia64_note.GNU-stack.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/08_all_superh_default-multilib.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/09_all_libiberty-asprintf.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/10_all_libiberty-pic.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/11_all_nopie-all-flags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/12_all_extra-options.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/13_all_pr55930-dependency-tracking.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/14_all_asan-signal_h.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/15_all_respect-build-cxxflags.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/16_all_libgfortran-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/17_all_libgomp-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/18_all_libitm-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/19_all_libatomic-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/20_all_libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/21_all_libsanitizer-libbacktrace-Werror.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/22_all_libstdcxx-no-vtv.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/23_all_std_pair_ABI.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/24_all_libsanitizer-p1.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/25_all_libsanitizer-p2.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/26_all_libcpp-ar.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/27_all_whitespace-pa.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/28_all_libjava-multilib.patch
	cd ${WRKSRC} && patch -Np1 -i ${FILESDIR}/29_all_plugin-objdump.patch
	${TAR} -jxf ${DISTDIR}/${ISL14}.tar.bz2 -C ${WRKSRC}
	${MV} ${WRKSRC}/${ISL14} ${WRKSRC}/isl
.endif

## For target librarys and libjava programs.
CONFIGURE_ENV+=		LDFLAGS_FOR_TARGET=${LDFLAGS_FOR_TARGET:Q}

CONFIGURE_ARGS+=	--enable-languages=${LANGS:Q}
CONFIGURE_ARGS+=	--enable-shared
CONFIGURE_ARGS+=	--enable-long-long
CONFIGURE_ARGS+=	--with-local-prefix=${GCC_PREFIX:Q}
CONFIGURE_ARGS+=	--enable-threads=posix
CONFIGURE_ARGS+=	--with-boot-ldflags=${BOOT_LDFLAGS:Q}

.if !empty(MACHINE_PLATFORM:MNetBSD-*-*)
# native SSP conflicts with gcc's libssp
CONFIGURE_ARGS+=	--disable-libssp
# Match base libstdc++ major
SUBST_CLASSES+=		libstdc
SUBST_STAGE.libstdc=	pre-configure
SUBST_FILES.libstdc=	libstdc++-v3/configure
SUBST_MESSAGE.libstdc=	Bumping libstdc++ major to 7
SUBST_SED.libstdc=	-e 's,libtool_VERSION=6:,libtool_VERSION=7:,g'
.else
CONFIGURE_ARGS+=	--enable-libssp
.endif

# multilib on Darwin requires fat-binaries
CONFIGURE_ARGS.Darwin+=	--disable-multilib
.if !empty(OSX_SDK_PATH)
CONFIGURE_ARGS.Darwin+=	--with-sysroot=${OSX_SDK_PATH}
.endif
CONFIGURE_ARGS.NetBSD+=	--with-gnu-ld --with-ld=/usr/bin/ld
CONFIGURE_ARGS.NetBSD+=	--with-gnu-as --with-as=/usr/bin/as
MAKE_ENV.NetBSD+=	ac_cv_func_clock_gettime=yes
MAKE_ENV.NetBSD+=	ac_cv_func_gethostbyname_r=no
MAKE_ENV.NetBSD+=	ac_cv_func_freelocale=no
MAKE_ENV.NetBSD+=	ac_cv_func_newlocale=no
MAKE_ENV.NetBSD+=	ac_cv_func_uselocale=no
MAKE_ENV.SunOS+=	ac_cv_func_mkostemp=no

.if !empty(PKGSRC_COMPILER:Mclang) || ${OPSYS} == "DragonFly"
CONFIGURE_ARGS+=	--disable-bootstrap
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-*-i386) || !empty(MACHINE_PLATFORM:MLinux-*-i386)
CONFIGURE_ARGS+=	--with-arch=i486 --with-tune=i486
.endif

.if !empty(MACHINE_PLATFORM:MNetBSD-*-x86_64) || !empty(MACHINE_PLATFORM:MLinux-*-x86_64)
CONFIGURE_ARGS+=	--with-arch=nocona --with-tune=nocona --with-fpmath=sse
.endif

.if !empty(MACHINE_PLATFORM:MDarwin-[0-8].*-*)
CONFIGURE_ARGS+=	--with-dwarf2
.endif

# ${WRKSRC}/fixincludes/ looks for sed and compiles the path to sed into
# a binary so we need to make sure we give it the installed sed and not
# the tool wrapped one.
MAKE_ENV+=		ac_cv_path_SED=${TOOLS_SED}
MAKE_ENV+=		lt_cv_path_SED=${TOOLS_SED}

# Determine whether to use binutils
.if ${OPSYS} == "SunOS"
.  if exists(/usr/sfw/bin/gobjdump)
CONFIGURE_ENV+=		OBJDUMP=/usr/sfw/bin/gobjdump
.  endif
.  if exists(/usr/bin/ld)
CONFIGURE_ARGS+=	--without-gnu-ld --with-ld=/usr/bin/ld
.  else
CONFIGURE_ARGS+=	--without-gnu-ld --with-ld=/usr/ccs/bin/ld
.  endif
.  if exists(/usr/sfw/bin/gas)
CONFIGURE_ARGS+=	--with-gnu-as --with-as=/usr/sfw/bin/gas
.  elif exists(/usr/ccs/bin/as)
CONFIGURE_ARGS+=	--without-gnu-as --with-as=/usr/ccs/bin/as
.  else
BUILDLINK_DEPMETHOD.binutils=	full
.    include "../../devel/binutils/buildlink3.mk"
CONFIGURE_ARGS+=	--with-gnu-as --with-as=${PREFIX}/bin/gas
.  endif
.endif

.if ${OS_VARIANT} == "SmartOS"
SUBST_CLASSES+=		ccs
SUBST_STAGE.ccs=	pre-configure
SUBST_FILES.ccs=	contrib/make_sunver.pl
SUBST_SED.ccs=		-e 's,/usr/ccs/bin,/usr/bin,g'
.endif

CTF_FILES_SKIP+=	*/gengtype	# CPU limit exceeded

pre-configure:
	${RUN} cd ${WRKSRC} && ${MKDIR} ${OBJDIR}

TEST_TARGET=	-k check || ${TRUE}
pre-test:
	${RUN} 							\
	if runtest --version >/dev/null 2>/dev/null ; then	\
		: ;						\
	else							\
	  ${ECHO} "ERROR: Please install devel/dejagnu in order to run the test suite." ; \
	  exit 1 ;						\
	fi
post-test:
	${RUN} cd ${WRKSRC} && cd ${OBJDIR} &&		\
	${SHELL} ${WRKSRC}/contrib/test_summary >${WRKDIR}/test_summary.log
	${INFO_MSG} "Test summary are available in ${WRKDIR}/test_summary.log"

post-install:
	${TEST} -f ${DESTDIR}${GCC_PREFIX}/bin/cc || \
		( cd ${DESTDIR}${GCC_PREFIX}/bin ; ${LN} -f gcc cc )
.if !empty(PKG_OPTIONS:Mgcc-java)
	${RM} -f ${DESTDIR}${JAVA_HOME}/bin/javadoc
	${RM} -f ${DESTDIR}${JAVA_HOME}/jre/lib/${JAVA_ARCH}/libjawt.so
.endif
.if !empty(MACHINE_PLATFORM:MSunOS-*-*86*) && ${OS_VERSION} != "5.11"
	${SH} files/values.c ${DESTDIR}${GCC_PREFIX}/bin/gcc -m32 || ${TRUE}
	${SH} files/values.c ${DESTDIR}${GCC_PREFIX}/bin/gcc -m64 || ${TRUE}
.endif

GENERATE_PLIST+= \
	cd ${DESTDIR}${PREFIX} && 					\
	${FIND} ${GCC_SUBPREFIX} \( -type f -o -type l \) -print | ${SORT} ;

CONFIGURE_ARGS+=	--enable-bootstrap
CONFIGURE_ARGS+=	--enable-libssp
CONFIGURE_ARGS+=	--with-arch=k8 --with-tune=k8 --with-fpmath=sse
CONFIGURE_ARGS+=	--enable-multilib --with-multilib-list=m64,m32,mx32
CONFIGURE_ARGS+=	--enable-libmpx --with-system-zlib
CONFIGURE_ARGS+=        --with-gnu-as --with-as=${PREFIX}/bin/gas
CONFIGURE_ARGS+=        --with-gnu-ld --with-ld=${PREFIX}/bin/gld
BUILDLINK_DEPMETHOD.binutils=   full
.  include "../../devel/binutils/buildlink3.mk"

# pkgsrc gcc packages don't install libgcc_s on some platforms, to
# avoid problems when mixing compiler versions.  This breaks our use
# of pkgsrc gcc on EL.
PKG_DEFAULT_OPTIONS+=   always-libgcc

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
