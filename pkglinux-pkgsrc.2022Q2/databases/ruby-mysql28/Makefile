# $NetBSD: Makefile,v 1.3 2021/08/24 11:06:06 nia Exp $
#

DISTNAME=	mysql-ruby-2.8.2
PKGNAME=	${RUBY_PKGPREFIX}-mysql28-2.8.2
PKGREVISION=	1
CATEGORIES=	databases ruby
MASTER_SITES=	http://tmtm.org/downloads/mysql/ruby/

MAINTAINER=	neumann@s-direktnet.de
HOMEPAGE=	http://www.tmtm.org/en/mysql/ruby/
COMMENT=	Ruby extension for MySQL
LICENSE=	gnu-gpl-v2 OR ruby-license

USE_RUBY_EXTCONF=	yes
INSTALL_TARGET=		site-install
CONFIGURE_ARGS+=	--with-mysql-config
INSTALLATION_DIRS=	${RUBY_DOC}/mysql ${RUBY_EG}/mysql

MYSQL_VERSIONS_ACCEPTED=	57 56

DOCS=		README.html README_ja.html tommy.css

post-install:
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/${RUBY_DOC}/mysql
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/test.rb ${DESTDIR}${PREFIX}/${RUBY_EG}/mysql

.include "../../lang/ruby/modules.mk"
.include "../../mk/mysql.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
