# $NetBSD: Makefile,v 1.21 2022/04/29 11:56:46 wiz Exp $

DISTNAME=	Flask-User-1.0.1.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	${MASTER_SITE_PYPI:=F/Flask-User/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/lingthio/Flask-User
COMMENT=	Customizable user account management for Flask
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGPREFIX}-bcrypt>=2.0:../../security/py-bcrypt
DEPENDS+=	${PYPKGPREFIX}-cryptography-[0-9]*:../../security/py-cryptography
DEPENDS+=	${PYPKGPREFIX}-flask>=0.9:../../www/py-flask
DEPENDS+=	${PYPKGPREFIX}-flask-login>=0.2:../../www/py-flask-login
DEPENDS+=	${PYPKGPREFIX}-flask-mail>=0.9:../../www/py-flask-mail
DEPENDS+=	${PYPKGPREFIX}-flask-sqlalchemy>=1.0:../../www/py-flask-sqlalchemy
DEPENDS+=	${PYPKGPREFIX}-flask-wtf>=0.9:../../www/py-flask-wtf
DEPENDS+=	${PYPKGPREFIX}-passlib>=0.6:../../security/py-passlib
BUILD_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner
TEST_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test

USE_LANGUAGES=		# none

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
