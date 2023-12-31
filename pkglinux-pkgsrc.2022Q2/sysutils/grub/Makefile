# $NetBSD: Makefile,v 1.62 2021/11/09 10:25:13 nia Exp $

DISTNAME=	grub-0.97
PKGREVISION=	10
CATEGORIES=	sysutils
MASTER_SITES=	ftp://alpha.gnu.org/gnu/grub/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.gnu.org/software/grub/
COMMENT=	GRand Unified Bootloader -- Boots *BSD, Linux, groks ffs, FAT, ext2
LICENSE=	gnu-gpl-v2

CONFLICTS=	grub2-[0-9]*

ONLY_FOR_PLATFORM=	*-*-i386 *-*-x86_64

GNU_CONFIGURE=		YES
USE_TOOLS+=		gmake
INFO_FILES=		YES

INSTALLATION_DIRS=	share/doc/grub

BUILDLINK_TRANSFORM+=	opt:-fno-builtin:-ffreestanding

SSP_SUPPORTED=		no
FORTIFY_SUPPORTED=	no
MKPIE_SUPPORTED=	no
RELRO_SUPPORTED=	no

.include "../../mk/bsd.prefs.mk"

BUILD_DEFS+=		GRUB_NETWORK_CARDS
BUILD_DEFS+=		GRUB_PRESET_COMMAND
BUILD_DEFS+=		GRUB_SCAN_ARGS

.include "../../mk/curses.buildlink3.mk"

PLIST_VARS+=		netboot
.if defined(GRUB_NETWORK_CARDS)
CONFIGURE_ARGS+=	--enable-diskless
PLIST.netboot=		yes

.  for nic in ${GRUB_NETWORK_CARDS}
CONFIGURE_ARGS+=	--enable-${nic}
.  endfor

post-install: grub-netboot-install
.PHONY: grub-netboot-install
grub-netboot-install:
	${INSTALL_DATA} ${WRKSRC}/netboot/README.netboot \
		${PREFIX}/share/doc/grub
.endif

.if defined(GRUB_PRESET_COMMAND) && !empty(GRUB_PRESET_COMMAND)
CONFIGURE_ARGS+=	--enable-preset-menu=${WRKSRC}/presetmenu

post-extract: grub-presetmenu
.PHONY: grub-presetmenu
grub-presetmenu:
	${ECHO} ${GRUB_PRESET_COMMAND} > ${WRKSRC}/presetmenu
.endif

.if defined(GRUB_SCAN_ARGS)
CONFIGURE_ARGS+=	${GRUB_SCAN_ARGS}
.endif

SUBST_CLASSES+=		grubterm
SUBST_STAGE.grubterm=	pre-configure
SUBST_MESSAGE.grubterm=	Changing references to <term.h> to <grubterm.h>
SUBST_FILES.grubterm=	grub/*.c stage2/Makefile.in stage2/*.c
SUBST_SED.grubterm=	-e "s,<term.h>,<grubterm.h>,g"
SUBST_SED.grubterm+=	-e "s, term.h , grubterm.h ,g"

post-extract:
	${MV} ${WRKSRC}/stage2/term.h ${WRKSRC}/stage2/grubterm.h

.include "../../mk/bsd.pkg.mk"
