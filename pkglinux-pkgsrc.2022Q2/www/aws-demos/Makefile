# $NetBSD: Makefile,v 1.31 2021/12/08 16:06:54 adam Exp $

DISTNAME=	aws-${AWS_VERSION}
PKGNAME=	aws-demos-${AWS_VERSION}
PKGREVISION=	16
CATEGORIES=	www
MASTER_SITES=	http://downloads.dragonlace.net/src/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://libre.adacore.com/libre/tools/aws/
COMMENT=	Adacore Ada Web Server demonstration programs
LICENSE=	gnu-gpl-v2

AWS_VERSION=		3.1.0.0
USE_TOOLS+=		gmake makeinfo sed awk
USE_LANGUAGES=		c ada c++ fortran
PATCHDIR=		${.CURDIR}/../../www/aws/patches
DISTINFO_FILE=		${.CURDIR}/../../www/aws/distinfo
CONFIGURE_ARGS+=	GCC=ada
CONFIGURE_ARGS+=	PROCESSORS=1
CONFIGURE_ARGS+=	PYTHON=python${PYVERSSUFFIX}
CONFIGURE_ARGS+=	XMLADA=true
CONFIGURE_ARGS+=	prefix=${PREFIX}
CONFIGURE_ARGS+=	DEBUG=true

MY_MAKE_ENV+=		ADA_PROJECT_PATH=${PREFIX}/lib/gnat
MY_MAKE_ENV+=		AWK=awk
MY_MAKE_ENV+=		PATH=${PREFIX}/gcc5-aux/bin:${PATH}
MY_CONF_ENV+=		PATH=${PREFIX}/gcc5-aux/bin:${PATH}
CONFIGURE_ARGS+=	LPATH=${BUILDLINK_PREFIX.openssl}/lib
CONFIGURE_ARGS+=	ZPATH=${BUILDLINK_PREFIX.zlib}/lib

SUBST_CLASSES+=		lpath
SUBST_STAGE.lpath=	pre-configure
SUBST_MESSAGE.lpath=	Add library path for ldap
SUBST_FILES.lpath=	demos/test_ldap/test_ldap.gpr
SUBST_VARS.lpath=	PREFIX

DEMO_DIRS+=	auth
DEMO_DIRS+=	autobahn
DEMO_DIRS+=	cert
DEMO_DIRS+=	com
DEMO_DIRS+=	dispatch
DEMO_DIRS+=	dowload_manager
DEMO_DIRS+=	hello_world
DEMO_DIRS+=	hotplug
DEMO_DIRS+=	jabber_demo
DEMO_DIRS+=	multiple_sessions
DEMO_DIRS+=	res_demo
DEMO_DIRS+=	soap_demo
DEMO_DIRS+=	soap_disp
DEMO_DIRS+=	soap_vs
DEMO_DIRS+=	split
DEMO_DIRS+=	test_mail
DEMO_DIRS+=	text_input
DEMO_DIRS+=	upload
DEMO_DIRS+=	vh_demo
DEMO_DIRS+=	web_block
DEMO_DIRS+=	web_block_ajax
DEMO_DIRS+=	web_block_ajax_templates
DEMO_DIRS+=	web_elements
DEMO_DIRS+=	web_mail
DEMO_DIRS+=	websockets
DEMO_DIRS+=	wps
DEMO_DIRS+=	ws
DEMO_DIRS+=	zdemo

# These don't build, fail finding "aws.ini"
#DEMO_DIRS+=	interoplab
#DEMO_DIRS+=	hello_wsdl

PLIST_VARS+=	ldap ssl

.include "../../www/aws/buildlink3.mk"

.if !empty(PKG_BUILD_OPTIONS.awk:Mldap)
.include "../../databases/openldap-client/buildlink3.mk"
CONFIGURE_ARGS+=	LDAP=true
DEMO_DIRS+=		test_ldap
PLIST.ldap=		yes
.endif

.if !empty(PKG_BUILD_OPTIONS.awk:Mssl)
.include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	SOCKET=openssl
DEMO_DIRS+=		agent
DEMO_DIRS+=		runme
PLIST.ssl=		yes
.endif

.if !empty(PKG_BUILD_OPTIONS.awk:Mgnutls)
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
CONFIGURE_ARGS+=	SOCKET=gnutls
DEMO_DIRS+=		agent
DEMO_DIRS+=		runme
PLIST.ssl=		yes
.endif

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MY_CONF_ENV} \
		${GMAKE} setup ${CONFIGURE_ARGS}

do-build:
.for dd in ${DEMO_DIRS}
	cd ${WRKSRC}/demos/${dd} && ${SETENV} ${MY_MAKE_ENV} ${GMAKE}
.endfor

do-install:
	${MKDIR} ${DESTDIR}${PREFIX}/share/examples/aws/demos
.for dd in ${DEMO_DIRS}
	${FIND} ${WRKSRC}/demos/${dd} -type f -perm -0100 \
	-exec ${INSTALL} {} ${DESTDIR}${PREFIX}/share/examples/aws/demos/ \;
.endfor

.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/gprbuild-aux/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
