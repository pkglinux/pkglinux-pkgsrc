# $NetBSD: Makefile,v 1.35 2022/05/14 22:25:42 dholland Exp $

DISTNAME=	emacs-w3m-1.4.4
PKGREVISION=	5
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	uebayasi@NetBSD.org
HOMEPAGE=	http://emacs-w3m.namazu.org/
COMMENT=	Simple w3m interface for Emacs

INSTALLATION_DIRS=	${ETCDIR}

USE_TOOLS+=	makeinfo
INFO_FILES=	YES

DEPENDS+=	w3m{,-img}>=0.5.1nb2:../../www/w3m

HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-emacs=${EMACS_BIN:Q}
CONFIGURE_ARGS+=	--with-icondir=${ICONDIR}
BUILD_TARGET=		default
INSTALL_TARGET=		${INSTALL_TARGET.${EMACS_FLAVOR}}
MAKE_FLAGS=		prefix=${DESTDIR}${PREFIX} ICONDIR=${DESTDIR}${ICONDIR}
PLIST_SUBST+=		ETCDIR=${ETCDIR:Q}

SUBST_CLASSES+=			fix-icondir
SUBST_STAGE.fix-icondir=	pre-configure
SUBST_FILES.fix-icondir=	Makefile.in w3m.el w3mhack.el
SUBST_SED.fix-icondir=		-e 's|etc/images/w3m|etc/w3m|g'
SUBST_SED.fix-icondir+=		-e 's|images/w3m|w3m|g'

EMACS_BUILDLINK=		# defined
EMACS_VERSIONS_ACCEPTED=	emacs21 emacs21nox emacs20 \
				xemacs215 xemacs215nox xemacs214 xemacs214nox

.include "../../editors/emacs/modules.mk"

# GNU Emacs 21 or later and XEmacs have GUI support
PLIST_VARS+=	gui
.if (${EMACS_FLAVOR} == "emacs" && ${EMACS_VERSION_MAJOR} > 20) || \
    ${EMACS_FLAVOR} == "xemacs"
PLIST.gui=	yes
.endif

# Work around an xemacs rendering bug for optimized GIFs, see
# <https://github.com/doitian/emacs-w3m>, 2b
.if (${EMACS_FLAVOR} == "xemacs")
DEPENDS+=	gifsicle:../../graphics/gifsicle
.endif

DOCUMENTS=	COPYING ChangeLog ChangeLog.1 README README.ja
ETCDIR=		${ETCDIR.${EMACS_FLAVOR}}
ICONDIR=	${PREFIX}/${ETCDIR}

INSTALL_TARGET.emacs=	install install-icons
INSTALL_TARGET.xemacs=	install-package
ETCDIR.emacs=		share/emacs/${_EMACS_VERSION_MAJOR}/etc/w3m
ETCDIR.xemacs=		lib/xemacs/site-packages/etc/w3m

post-install:
	for f in ${DOCUMENTS}; do \
		${INSTALL_DATA} ${WRKSRC}/$$f ${DESTDIR}${PREFIX}/${ETCDIR}; \
	done

.include "options.mk"

.if (${EMACS_FLAVOR} != "xemacs")
.include "../../devel/apel/buildlink3.mk"
.include "../../devel/semi/buildlink3.mk"
.include "../../editors/mule-ucs/buildlink3.mk"
.endif

.include "../../devel/flim/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
