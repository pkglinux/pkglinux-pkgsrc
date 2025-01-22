# $NetBSD: Makefile,v 1.2 2021/08/11 $

PKGNAME=	pkglinux-2022Q2
CATEGORIES=	linux

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pkglinux.org/
COMMENT=	Meta-package for the pkgLinux desktop environment

META_PACKAGE=	yes

.include "../../mk/bsd.prefs.mk"

DEPENDS+=	bootscripts-[0-9]*:../../native/bootscripts
DEPENDS+=	startups-[0-9]*:../../native/startups
DEPENDS+=	mkshadow-[0-9]*:../../native/mkshadow
DEPENDS+=	native-glibc-[0-9]*:../../native/glibc
DEPENDS+=	native-gcc6-[0-9]*:../../native/gcc6
DEPENDS+=	linux-firmware-[0-9]*:../../native/linux-firmware
DEPENDS+=	native-linux-API-headers-[0-9]*:../../native/kernel-headers
DEPENDS+=	native-linux-kernel-[0-9]*:../../native/kernel
DEPENDS+=	cryptsetup-[0-9]*:../../linux/cryptsetup
DEPENDS+=	LVM2-[0-9]*:../../linux/LVM2
DEPENDS+=	libgetopt-[0-9]*:../../devel/libgetopt
DEPENDS+=	initramfs-[0-9]*:../../native/initramfs
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	native-glibc-m32-[0-9]*:../../native/glibc-m32
.endif

DEPENDS+=	nawk-[0-9]*:../../lang/nawk
DEPENDS+=	nbsed-[0-9]*:../../textproc/nbsed
DEPENDS+=	pkgin-[0-9]*:../../pkgtools/pkgin

DEPENDS+=	native-acl-[0-9]*:../../native/acl
DEPENDS+=	man-pages-[0-9]*:../../native/man-pages
DEPENDS+=	zlib-[0-9]*:../../devel/zlib
DEPENDS+=	bzip2-[0-9]*:../../archivers/bzip2
DEPENDS+=	xz-[0-9]*:../../archivers/xz
DEPENDS+=	file-[0-9]*:../../sysutils/file
DEPENDS+=	readline-[0-9]*:../../devel/readline
DEPENDS+=	m4-[0-9]*:../../devel/m4
DEPENDS+=	bc-[0-9]*:../../math/bc
DEPENDS+=	binutils-[0-9]*:../../devel/binutils
DEPENDS+=	gmp-[0-9]*:../../devel/gmp
DEPENDS+=	mpfr-[0-9]*:../../math/mpfr
DEPENDS+=	mpcomplex-[0-9]*:../../math/mpcomplex
DEPENDS+=	attr-[0-9]*:../../sysutils/attr
DEPENDS+=	native-shadow-[0-9]*:../../native/shadow
DEPENDS+=	Linux-PAM-[0-9]*:../../native/linux-pam
DEPENDS+=	pkgconf-[0-9]*:../../devel/pkgconf
DEPENDS+=	ncurses-[0-9]*:../../devel/ncurses
DEPENDS+=	ncursesw-[0-9]*:../../devel/ncursesw
DEPENDS+=	libcap-[0-9]*:../../sysutils/libcap
DEPENDS+=	gsed-[0-9]*:../../textproc/gsed
DEPENDS+=	psmisc-[0-9]*:../../sysutils/psmisc
DEPENDS+=	iana-etc-[0-9]*:../../native/iana-etc
DEPENDS+=	bison-[0-9]*:../../devel/bison
DEPENDS+=	flex-[0-9]*:../../devel/flex
DEPENDS+=	grep-[0-9]*:../../textproc/grep
DEPENDS+=	bash-[0-9]*:../../shells/bash
DEPENDS+=	dialog-[0-9]*:../../misc/dialog
DEPENDS+=	native-libtool-[0-9]*:../../native/libtool
DEPENDS+=	gdbm-[0-9]*:../../databases/gdbm
DEPENDS+=	gperf-[0-9]*:../../devel/gperf
DEPENDS+=	expat-[0-9]*:../../textproc/expat
DEPENDS+=	inetutils-[0-9]*:../../net/inetutils
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	perl-[0-9]*:../../lang/perl5
DEPENDS+=	p5-XML-Parser-[0-9]*:../../textproc/p5-XML-Parser
.endif
DEPENDS+=	intltool-[0-9]*:../../textproc/intltool
DEPENDS+=	autoconf-[0-9]*:../../devel/autoconf
DEPENDS+=	automake-[0-9]*:../../devel/automake
DEPENDS+=	kmod-[0-9]*:../../linux/kmod
DEPENDS+=	gettext-[0-9]*:../../devel/gettext
DEPENDS+=	libffi-[0-9]*:../../devel/libffi
DEPENDS+=	elfutils-[0-9]*:../../linux/elfutils
DEPENDS+=	openssl-[0-9]*:../../security/openssl
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	python39-[0-9]*:../../lang/python39
DEPENDS+=	ninja-build-[0-9]*:../../devel/ninja-build
DEPENDS+=	meson-[0-9]*:../../devel/meson
.endif
DEPENDS+=	coreutils-[0-9]*:../../sysutils/coreutils
DEPENDS+=	check-[0-9]*:../../devel/check
DEPENDS+=	diffutils-[0-9]*:../../devel/diffutils
DEPENDS+=	gawk-[0-9]*:../../lang/gawk
DEPENDS+=	groff-[0-9]*:../../native/groff
DEPENDS+=	findutils-[0-9]*:../../sysutils/findutils
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	grub2-[0-9]*:../../sysutils/grub2
DEPENDS+=	grub-efi-[0-9]*:../../linux/grub-efi
.endif
DEPENDS+=	less-[0-9]*:../../misc/less
DEPENDS+=	gzip-[0-9]*:../../archivers/gzip
DEPENDS+=	zstd-[0-9]*:../../archivers/zstd
DEPENDS+=	iproute2-[0-9]*:../../native/iproute2
DEPENDS+=	native-kbd-[0-9]*:../../native/kbd
DEPENDS+=	libpipeline-[0-9]*:../../linux/libpipeline
DEPENDS+=	gmake-[0-9]*:../../devel/gmake
DEPENDS+=	patch-[0-9]*:../../devel/patch
DEPENDS+=	man-db-[0-9]*:../../linux/man-db
DEPENDS+=	gtar-[0-9]*:../../archivers/gtar
DEPENDS+=	gtexinfo-[0-9]*:../../devel/gtexinfo
DEPENDS+=	vim-[0-9]*:../../editors/vim
DEPENDS+=	nano-[0-9]*:../../editors/nano
DEPENDS+=	procps-ng-[0-9]*:../../linux/procps-ng
DEPENDS+=	util-linux-[0-9]*:../../native/util-linux
DEPENDS+=	e2fsprogs-[0-9]*:../../native/e2fsprogs
DEPENDS+=	sysklogd-[0-9]*:../../native/sysklogd
#DEPENDS+=	sysvinit-[0-9]*:../../native/sysvinit
DEPENDS+=	openrc-[0-9]*:../../native/openrc
DEPENDS+=	eudev-[0-9]*:../../linux/eudev
DEPENDS+=	rpcsvc-proto-[0-9]*:../../native/rpcsvc-proto
DEPENDS+=	libtirpc-[0-9]*:../../linux/libtirpc
DEPENDS+=	dhcpcd-[0-9]*:../../net/dhcpcd
DEPENDS+=	openssh-[0-9]*:../../security/openssh
DEPENDS+=	ntfsprogs-[0-9]*:../../sysutils/ntfsprogs
DEPENDS+=	bind-[0-9]*:../../net/bind916
DEPENDS+=	bsdtar-[0-9]*:../../archivers/bsdtar
DEPENDS+=	gcpio-[0-9]*:../../archivers/gcpio
DEPENDS+=	pigz-[0-9]*:../../linux/pigz
DEPENDS+=	pixz-[0-9]*:../../linux/pixz
DEPENDS+=	screen-[0-9]*:../../misc/screen
DEPENDS+=	chkconfig-[0-9]*:../../native/chkconfig
DEPENDS+=	rcorder-[0-9]*:../../pkgtools/rcorder
DEPENDS+=	rc.subr-[0-9]*:../../pkgtools/rc.subr
DEPENDS+=	rc.d-boot-[0-9]*:../../pkgtools/rc.d-boot
DEPENDS+=	genfstab-[0-9]*:../../native/genfstab
DEPENDS+=	dosfstools-[0-9]*:../../sysutils/dosfstools
DEPENDS+=	mtools-[0-9]*:../../sysutils/mtools
.if empty(USE_CROSS_COMPILE:M[yY][eE][sS])
DEPENDS+=	libisoburn-[0-9]*:../../sysutils/libisoburn
DEPENDS+=	cdrtools-[0-9]*:../../sysutils/cdrtools
DEPENDS+=	syslinux-[0-9]*:../../native/syslinux
#DEPENDS+=	NetworkManager-[0-9]*:../../linux/NetworkManager
DEPENDS+=	iw-[0-9]*:../../linux/iw
DEPENDS+=	wireless-tools-[0-9]*:../../linux/wireless-tools
#DEPENDS+=	busybox-[0-9]*:../../native/busybox
.endif
DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	squashfs-[0-9]*:../../linux/squashfs
DEPENDS+=	squashfs-tools-ng-[0-9]*:../../linux/squashfs-tools-ng
DEPENDS+=	zsync-[0-9]*:../../net/zsync
#DEPENDS+=	profile-data-[0-9]*:../../native/profile-data

.include "../../mk/bsd.pkg.mk"
