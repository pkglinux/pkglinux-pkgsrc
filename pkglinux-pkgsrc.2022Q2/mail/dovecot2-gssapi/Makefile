# $NetBSD: Makefile,v 1.9 2021/11/02 12:03:53 adam Exp $

.include "../../mail/dovecot2/Makefile.common"

PKGNAME=	${DISTNAME:S/dovecot/dovecot-gssapi/}
COMMENT+=	(GSSAPI plugin)

CONFIGURE_ARGS+=	--with-gssapi=plugin

INSTALLATION_DIRS+=	lib/dovecot/auth

do-install:
	cd ${WRKSRC} && ${LIBTOOL} --mode=install ${INSTALL_LIB} 	\
		src/auth/libmech_gssapi.la 				\
		${DESTDIR}${PREFIX}/lib/dovecot/auth

.include "../../mk/krb5.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
