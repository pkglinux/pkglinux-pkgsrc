# $NetBSD: Makefile,v 1.21 2021/10/21 07:46:35 wiz Exp $

DISTNAME=	cvs-1.12.13
PKGREVISION=	8
CATEGORIES=	devel scm
MASTER_SITES=	http://ftp.gnu.org/non-gnu/cvs/source/feature/${PKGVERSION_NOREV}/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://cvs.nongnu.org/
COMMENT=	Concurrent Versions System
LICENSE=	gnu-gpl-v2

USE_TOOLS+=		makeinfo autoconf
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-external-zlib
CONFIGURE_ARGS+=	--with-rsh=ssh
CONFIGURE_ENV+=		PERL=${TOOLS_PERL5}
CONFIGURE_ENV+=		gl_cv_func_getcwd_null=yes

CHECK_INTERPRETER_SKIP=	share/cvs/contrib/*
INFO_FILES=		yes
TEXINFO_REQD+=		4.0

CONFIGURE_ARGS.Darwin+=	--enable-case-sensitivity

.include "options.mk"

AUTOCONF_REQD=		2.50
pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
