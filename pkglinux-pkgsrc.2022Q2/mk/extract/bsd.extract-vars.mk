# $NetBSD: bsd.extract-vars.mk,v 1.21 2022/01/06 10:19:11 schmonz Exp $
#
# This file configures how a package extracts its distfiles after
# downloading them.
#
# This Makefile fragment is included separately by bsd.pkg.mk and
# defines some variables which must be defined earlier than where
# bsd.extract.mk is included, which defines the other variables.
#
# Package-settable variables:
#
# EXTRACT_SUFX
#	The suffix for the default distfile to be extracted.
#	Defaults to ".tar.gz".
#
# EXTRACT_ONLY
#	The list of distfiles relative to ${_DISTDIR} that are
#	extracted.  Defaults to ${DISTFILES}.
#
#	Only few packages need this variable. To extract some of the
#	distfiles into separate directories, see EXTRACT_DIR.
#
# EXTRACT_USING
#	The tool used to extract tar/ustar-format archives when using
#	EXTRACT_CMD_DEFAULT. The possible values are "bsdtar", "gtar",
#	"nbtar", and "pax". Defaults to "nbtar", which means the value
#	of ${TOOL_PLATFORM.tar}, which is typically an arbitrary
#	implementation already found on the platform.
#    \todo: Decide if this is package-settable or user-settable or both.

_VARGROUPS+=		extract
_PKG_VARS.extract=	EXTRACT_DIR EXTRACT_ONLY EXTRACT_SUFX EXTRACT_CMD \
			EXTRACT_OPTS EXTRACT_USING EXTRACT_ELEMENTS
_SYS_VARS.extract=	EXTRACT_CMD_DEFAULT
_LISTED_VARS.extract=	EXTRACT_CMD EXTRACT_CMD_DEFAULT

EXTRACT_ONLY?=		${DISTFILES}
EXTRACT_SUFX?=		.tar.gz

EXTRACT_USING?=		nbtar

###
### Discover which tools we need based on the file extensions of the
### distfiles.
###
.if !empty(EXTRACT_ONLY:M*.tar) || \
    !empty(EXTRACT_ONLY:M*.tar.*) || \
    !empty(EXTRACT_ONLY:M*.tbz) || \
    !empty(EXTRACT_ONLY:M*.tbz2) || \
    !empty(EXTRACT_ONLY:M*.tgz) || \
    !empty(EXTRACT_ONLY:M*-tar.gz) || \
    !empty(EXTRACT_ONLY:M*_tar.gz)
.  if !empty(EXTRACT_USING:Mbsdtar)
USE_TOOLS+=	bsdtar
.  elif !empty(EXTRACT_USING:Mgtar)
USE_TOOLS+=	gtar
.  elif !empty(EXTRACT_USING:Mnbtar)
USE_TOOLS+=	tar
.  elif !empty(EXTRACT_USING:Mpax)
USE_TOOLS+=	pax
.  endif
.endif
.if !empty(EXTRACT_ONLY:M*.cpio) || \
    !empty(EXTRACT_ONLY:M*.cpio.bz2) || \
    !empty(EXTRACT_ONLY:M*.cpio.gz)
USE_TOOLS+=	pax
.endif
.if !empty(EXTRACT_ONLY:M*.bz2) || \
    !empty(EXTRACT_ONLY:M*.tbz) || \
    !empty(EXTRACT_ONLY:M*.tbz2)
USE_TOOLS+=	bzcat
.endif
.if !empty(EXTRACT_ONLY:M*.lz)
USE_TOOLS+=	lzip
.endif
.if !empty(EXTRACT_ONLY:M*.lzma)
USE_TOOLS+=	xzcat
.endif
.if !empty(EXTRACT_ONLY:M*.xz) || \
    !empty(EXTRACT_ONLY:M*.txz)
USE_TOOLS+=	xzcat
.endif
.if !empty(EXTRACT_ONLY:M*.zip)
USE_TOOLS+=	unzip
.endif
.if !empty(EXTRACT_ONLY:M*.lzh) || \
    !empty(EXTRACT_ONLY:M*.lha)
USE_TOOLS+=	lha
.endif
.if !empty(EXTRACT_ONLY:M*.gz) || \
    !empty(EXTRACT_ONLY:M*.tgz) || \
    !empty(EXTRACT_ONLY:M*.Z)
USE_TOOLS+=	gzcat
.endif
.if !empty(EXTRACT_ONLY:M*.zoo)
USE_TOOLS+=	unzoo
.endif
.if !empty(EXTRACT_ONLY:M*.rar)
USE_TOOLS+=	unrar
.endif
.if !empty(EXTRACT_ONLY:M*.rpm)
USE_TOOLS+=	rpm2pkg
.endif
.if !empty(EXTRACT_ONLY:M*.gem)
USE_TOOLS+=	gem
.endif
.if !empty(EXTRACT_ONLY:M*.7z)
USE_TOOLS+=	7za
.endif
.if !empty(EXTRACT_ONLY:M*.zst)
USE_TOOLS+=	zstd
.endif

