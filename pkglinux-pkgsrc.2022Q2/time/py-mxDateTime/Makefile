# $NetBSD: Makefile,v 1.45 2022/01/10 22:16:23 wiz Exp $

VERSION=	3.2.9
DISTNAME=	egenix-mx-base-${VERSION}
PKGNAME=	${PYPKGPREFIX}-mxDateTime-${VERSION}
PKGREVISION=	1
CATEGORIES=	time python
MASTER_SITES=	http://downloads.egenix.com/python/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.egenix.com/files/python/mxDateTime.html
COMMENT=	Python extension that provides types and conversions for dates
LICENSE=	egenix-public-license

PYTHON_VERSIONS_ACCEPTED=	27	# not yet ported as of 3.2.9

REPLACE_PYTHON+=	egenix_mx_base.py
REPLACE_PYTHON+=	mx/BeeBase/FileLock.py
REPLACE_PYTHON+=	mx/BeeBase/mxBeeBase/calc-sectorsize.py
REPLACE_PYTHON+=	mx/BeeBase/mxBeeBase/testernesto.py
REPLACE_PYTHON+=	mx/BeeBase/showBeeDict.py
REPLACE_PYTHON+=	mx/DateTime/Examples/AtomicClock.py
REPLACE_PYTHON+=	mx/DateTime/Examples/Y2000.py
REPLACE_PYTHON+=	mx/DateTime/Examples/alarm.py
REPLACE_PYTHON+=	mx/DateTime/mxDateTime/test.py
REPLACE_PYTHON+=	mx/Log.py
REPLACE_PYTHON+=	mx/Misc/Daemon.py
REPLACE_PYTHON+=	mx/Misc/FileLock.py
REPLACE_PYTHON+=	mx/Misc/OrderedMapping.py
REPLACE_PYTHON+=	mx/Queue/queuebench.py
REPLACE_PYTHON+=	mx/Stack/stackbench.py
REPLACE_PYTHON+=	mx/TextTools/Examples/HTML.py
REPLACE_PYTHON+=	mx/TextTools/Examples/Loop.py
REPLACE_PYTHON+=	mx/TextTools/Examples/Python.py
REPLACE_PYTHON+=	mx/TextTools/Examples/RTF.py
REPLACE_PYTHON+=	mx/TextTools/Examples/RegExp.py
REPLACE_PYTHON+=	mx/TextTools/Examples/Words.py
REPLACE_PYTHON+=	mx/TextTools/Examples/altRTF.py
REPLACE_PYTHON+=	mx/TextTools/Examples/mysplit.py
REPLACE_PYTHON+=	mx/TextTools/Examples/pytag.py
REPLACE_PYTHON+=	mx/TextTools/mxTextTools/testkj.py
REPLACE_PYTHON+=	setup.py

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
