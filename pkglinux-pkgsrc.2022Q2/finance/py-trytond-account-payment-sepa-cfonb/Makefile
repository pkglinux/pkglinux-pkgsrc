# $NetBSD: Makefile,v 1.4 2022/05/01 09:45:41 wiz Exp $
TRYTON_MODULE_NAME=	trytond_account_payment_sepa_cfonb
PKGREVISION= 1
.include "../../devel/py-trytond/Makefile.common"
CATEGORIES=	finance python

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.tryton.org/
COMMENT=	Account payment SEPA CFONB module of the Tryton application platform
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-trytond-account-payment-sepa>=${TRYTON_BASEVER}:../../finance/py-trytond-account-payment-sepa
DEPENDS+=	${PYPKGPREFIX}-trytond-account-payment>=${TRYTON_BASEVER}:../../finance/py-trytond-account-payment
DEPENDS+=	${PYPKGPREFIX}-trytond-bank>=${TRYTON_BASEVER}:../../finance/py-trytond-bank
DEPENDS+=	${PYPKGPREFIX}-trytond-company>=${TRYTON_BASEVER}:../../misc/py-trytond-company
DEPENDS+=	${PYPKGPREFIX}-trytond-party>=${TRYTON_BASEVER}:../../misc/py-trytond-party
DEPENDS+=	${PYPKGPREFIX}-trytond>=${TRYTON_BASEVER}:../../devel/py-trytond

REPLACE_PYTHON+=	tests/test_account_payment_sepa_cfonb.py

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
