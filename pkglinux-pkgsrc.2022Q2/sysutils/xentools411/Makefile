# $NetBSD: Makefile,v 1.34 2022/06/23 16:20:05 bouyer Exp $
#
# VERSION is set in version.mk as it is shared with other packages
PKGREVISION=	9
.include	"version.mk"

DIST_IPXE=	ipxe-git-${VERSION_IPXE}.tar.gz

DIST_SUBDIR=		xen411
DISTNAME=		xen-${VERSION}
PKGNAME=		xentools411-${VERSION}
#PKGREVISION=		5
CATEGORIES=		sysutils
MASTER_SITES=		https://downloads.xenproject.org/release/xen/${VERSION}/

DISTFILES=		${DISTNAME}.tar.gz

XEN_EXTFILES=		http://xenbits.xensource.com/xen-extfiles/
DISTFILES+=		${DIST_IPXE}
SITES.${DIST_IPXE} +=	${XEN_EXTFILES}

MAINTAINER=		bouyer@NetBSD.org
HOMEPAGE=		https://xenproject.org/
COMMENT=		Userland Tools for Xen 4.11.x
LICENSE=		gnu-gpl-v2

# XXX add version check: Xen requires dev86 >= 0.16.14
BUILD_DEPENDS+=	dev86-[0-9]*:../../devel/dev86 # needed to build firmware
.if !exists(/usr/bin/iasl)
BUILD_DEPENDS+=	acpica-utils-[0-9]*:../../sysutils/acpica-utils
.endif
DEPENDS+=	${PYPKGPREFIX}-curses>=0:../../devel/py-curses

PKG_SYSCONFSUBDIR=	xen

ONLY_FOR_PLATFORM=	Linux-2.6*-x86_64
ONLY_FOR_PLATFORM+=	NetBSD-[5-9].*-x86_64

SSP_SUPPORTED=		no
MKPIE_SUPPORTED=	no

CONFLICTS+=		libxen-[0-9]*
CONFLICTS+=		xenstoretools-[0-9]*

CHECK_PORTABILITY_SKIP=	tools/examples/* \
			tools/qemu-xen/scripts/qemu-binfmt-conf.sh
CHECK_RELRO_SKIP=	libexec/xen/boot/hvmloader
CHECK_RELRO_SKIP+=	libexec/xen/boot/xen-shim
CHECK_RELRO_SKIP+=	lib/debug/usr/pkg/libexec/xen/boot/xen-shim-syms

EGDIR=			${PREFIX}/share/examples/xen
MESSAGE_SUBST+=		EGDIR=${EGDIR}

USE_TOOLS+=		pod2man gmake pkg-config makeinfo perl bash cmake
USE_LANGUAGES=		c

GNU_CONFIGURE=		YES
GNU_CONFIGURE_STRICT=	no # seabios is for one of the sub-configures
#CONFIGURE_ARGS+=	--enable-xenapi
CONFIGURE_ARGS+=	--disable-seabios

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFBASE}

MAKE_ENV+=		PREFIX=${prefix:Q} WRKSRC=${WRKSRC}
MAKE_ENV+=		APPEND_LIB=${LDFLAGS:Q}
MAKE_ENV+=		XEN_EXAMPLES_DIR=${EGDIR}
MAKE_ENV+=		MV=${MV:Q} PYTHON=${PYTHONBIN:Q} SED=${SED:Q}
MAKE_ENV+=		V=YES
MAKE_ENV+=		NO_WERROR=1

BUILDLINK_TRANSFORM+=	rm:-Werror

PYTHON_VERSIONS_ACCEPTED=	27

PY_PATCHPLIST=		yes
REPLACE_PYTHON+=	tools/misc/xen-bugtool tools/misc/xen-ringwatch
REPLACE_PYTHON+=	tools/misc/xencons
REPLACE_PYTHON+=	tools/misc/xenpvnetboot tools/misc/xensymoops
REPLACE_PYTHON+=	tools/python/scripts/convert-legacy-stream
REPLACE_PYTHON+=	tools/python/scripts/verify-stream-v2
REPLACE_PYTHON+=	tools/xenmon/xenmon.py tools/misc/xencov_split

REPLACE_PERL+=		../ipxe/src/util/*.pl
REPLACE_PERL+=		../ipxe/src/drivers/infiniband/qib_genbits.pl
REPLACE_PERL+=		../ipxe/src/util/get-pci-ids
REPLACE_PERL+=		tools/examples/xeninfo.pl
REPLACE_PERL+=		tools/firmware/rombios/makesym.perl
REPLACE_PERL+=		tools/include/xen-external/bsd-sys-queue-h-seddery
REPLACE_PERL+=		tools/libxl/check-libxl-api-rules
REPLACE_PERL+=		tools/libxl/libxl_save_msgs_gen.pl
REPLACE_PERL+=		tools/qemu-xen-traditional/*.pl

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	pre-configure
SUBST_FILES.conf+=	docs/misc/block-scripts.txt
SUBST_SED.conf=		-e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g"

XEND_SCRIPTS=		block vif-bridge vif-ip qemu-ifup hotplugpath.sh locking.sh

SUBST_CLASSES.NetBSD+=	proc
SUBST_STAGE.proc=	pre-configure
SUBST_FILES.proc+=	tools/ocaml/xenstored/select.ml
SUBST_SED.proc=		-e "s|/proc|/kern|g"

SUBST_CLASSES+=		getopt
SUBST_STAGE.getopt=	pre-configure
SUBST_MESSAGE.getopt=	Fixing getopt_long_only
SUBST_FILES.getopt+=	tools/fuzz/x86_instruction_emulator/afl-harness.c
SUBST_SED.getopt+=	-e 's,getopt_long_only,getopt_long,'

OPSYSVARS+=		PROCPATH
PROCPATH.NetBSD=	/kern
PROCPATH.*=		/proc

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
MESSAGE_SRC=		${.CURDIR}/MESSAGE ${.CURDIR}/MESSAGE.NetBSD
.endif

RCD_SCRIPTS=		xen-watchdog xencommons xendomains
FILES_SUBST+=		RCD_INTERPRETER=${PYTHONBIN:Q}
FILES_SUBST+=		PROCPATH=${PROCPATH:Q}
FILES_SUBST+=		PKG_SYSCONFDIR=${PKG_SYSCONFDIR}
FILES_SUBST+=		PREFIX=${PREFIX}

CONF_FILES+=		${EGDIR}/xl.conf ${PKG_SYSCONFDIR}/xl.conf
CONF_FILES+=		${EGDIR}/oxenstored.conf ${PKG_SYSCONFDIR}/oxenstored.conf

OWN_DIRS=		${PKG_SYSCONFDIR}/scripts ${VARBASE}/log/xen

.for s in ${XEND_SCRIPTS}
CONF_FILES_PERMS+=	${EGDIR}/scripts/${s} ${PKG_SYSCONFDIR}/scripts/${s} \
			${REAL_ROOT_USER} ${REAL_ROOT_GROUP} 0755
.endfor

pre-build:
	rm -f ${WRKSRC}/check/check_x11_devel
	${CP} -f ${FILESDIR}/locking.sh  ${WRKSRC}/tools/hotplug/NetBSD/
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xenstore-chmod.pod.1 |\
	    pod2man -n xenstore-chmod >${WRKDIR}/xenstore-chmod.1
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xenstore-ls.pod.1 |\
	    pod2man -n xenstore-ls >${WRKDIR}/xenstore-ls.1
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xenstore.pod.1 |\
	    pod2man -n xenstore >${WRKDIR}/xenstore.1
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xentop.pod.1 |\
	    pod2man -n xentop >${WRKDIR}/xentop.1
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xentrace.pod.8 |\
	    pod2man -n xentrace >${WRKDIR}/xentrace.8
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xentrace_format.pod.1 |\
	    pod2man -n xenstore_format >${WRKDIR}/xentrace_format.1
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xl.cfg.pod.5.in |\
	    pod2man -n xl.cfg >${WRKDIR}/xl.cfg.5
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xl.conf.pod.5 |\
	    pod2man -n xl.conf >${WRKDIR}/xl.conf.5
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xl.pod.1.in |\
	    pod2man -n xl >${WRKDIR}/xl.1
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xlcpupool.cfg.pod.5 |\
	    pod2man -n xlcpupool.cfg >${WRKDIR}/xlcpupool.cfg.5
	${SED} -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
		${WRKSRC}/docs/man/xl-disk-configuration.pod.5 |\
	    pod2man -n xl-disk-configuration >${WRKDIR}/xl-disk-configuration.5

INSTALLATION_DIRS=	${EGDIR} ${PKGMANDIR}/man1 ${PKGMANDIR}/man5
INSTALLATION_DIRS+=	${PKGMANDIR}/man8 share/doc/xen

BUILD_DEFS+=		VARBASE

do-build:
	cd ${WRKSRC} && ${BUILD_MAKE_CMD} build-tools

do-install:
	cd ${WRKSRC} && ${BUILD_MAKE_CMD} DESTDIR=${DESTDIR} install-tools

post-install:
	${INSTALL_MAN} ${WRKDIR}/xenstore-chmod.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKDIR}/xenstore-ls.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKDIR}/xenstore.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKDIR}/xentop.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKDIR}/xentrace.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_MAN} ${WRKDIR}/xentrace_format.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKDIR}/xl.cfg.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_MAN} ${WRKDIR}/xl.conf.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_MAN} ${WRKDIR}/xl.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKDIR}/xlcpupool.cfg.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_MAN} ${WRKDIR}/xl-disk-configuration.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
.for f in \
    gamd-ucode-container.txt       gqemu-backends.txt \
    gblock-scripts.txt             gqemu-deprivilege.txt \
    gconsole.txt                   gstubdom.txt \
    gcrashdb.txt                   gvtd-pi.txt \
    gdistro_mapping.txt            gvtd.txt \
    gdump-core-format.txt          gvtpm-platforms.txt \
    ggrant-tables.txt              gxen-error-handling.txt \
    gkconfig-language.txt          gxenmon.txt \
    gkconfig.txt                   gxenpaging.txt \
    gkexec_and_kdump.txt           gxenstore-ring.txt \
    glibxl_memory.txt              gxenstore.txt \
    gprintk-formats.txt            gxsm-flask.txt \
	${INSTALL_DATA} ${WRKSRC}/docs/misc/$f ${DESTDIR}${PREFIX}/share/doc/xen
.endfor

.if ${OPSYS} == "NetBSD" && ${OPSYS_VERSION} < 069900
CPPFLAGS+=	-Dshm_open=open -Dshm_unlink=unlink
.endif

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
EXTRA_HOSTCFLAGS+=	-Wno-error=ignored-attributes
EXTRA_CFLAGS+=	-Wno-error=ignored-attributes -no-integrated-as \
		-Wno-error=tautological-compare -Wno-error=null-dereference \
		-Wno-error=empty-body -Wno-error=self-assign \
		-Wno-error=sometimes-uninitialized \
		-Wno-error=unused-function -Wno-error=format \
		-Wno-error=unused-const-variable \
		-Wno-error=gnu-designator -Wno-error=uninitialized \
		-Wno-error=parentheses-equality \
		-Wno-error=enum-conversion \
		-Wno-error=address-of-packed-member
BUILDLINK_TRANSFORM+=	rm:-falign-jumps=1 rm:-falign-loops=1 \
			rm:-mpreferred-stack-boundary=2
.endif

MAKE_ENV+=	EXTRA_HOSTCFLAGS=${EXTRA_HOSTCFLAGS:Q} EXTRA_CFLAGS=${EXTRA_CFLAGS:M*:Q} TARGET_CC=${TARGET_CC}

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
#.include "../../devel/SDL/buildlink3.mk"
.include "../../lang/ocaml/buildlink3.mk"
.include "../../devel/ocaml-findlib/buildlink3.mk"
BUILDLINK_API_DEPENDS.pciutils+=	pciutils>=3.8
.include "../../sysutils/pciutils/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/yajl/buildlink3.mk"
.include "../../devel/argp/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
