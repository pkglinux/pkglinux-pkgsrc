# $NetBSD: Makefile,v 1.8 2022/01/02 09:31:59 schmonz Exp $

PKGNAME=	${PYPKGPREFIX}-${PKGNAME_MODULE}
COMMENT=	Python bindings for Xapian search engine
HOMEPAGE=	https://xapian.org/docs/bindings/python/

PYTHON_VERSIONED_DEPENDENCIES=	sphinx

PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/pyversion.mk"
.if ${_PYTHON_VERSION} == 27
CONFIGURE_ARGS+=	--with-python
PYTHON_3_OR_PYTHON=	python
.else
CONFIGURE_ARGS+=	--with-python3 PYTHON3=${PYTHONBIN}
PYTHON_3_OR_PYTHON=	python3
.endif

PLIST_SUBST+=		PYTHON_3_OR_PYTHON=${PYTHON_3_OR_PYTHON:Q}
PY_PATCHPLIST=		yes
PYTHON_SELF_CONFLICT=	yes

REPLACE_PYTHON=		python/docs/examples/*.py

post-install:
	${CHMOD} +x ${DESTDIR}${PREFIX}/share/doc/xapian-bindings/${PYTHON_3_OR_PYTHON}/examples/*.py
.if ${_PYTHON_VERSION} != 27
	${MKDIR} ${DESTDIR}${PREFIX}/${PYSITELIB}/xapian/__pycache__
	${MV} ${DESTDIR}${PREFIX}/${PYSITELIB}/xapian/*.cpython* ${DESTDIR}${PREFIX}/${PYSITELIB}/xapian/__pycache__/
.endif

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../textproc/xapian/module.mk"
.include "../../mk/bsd.pkg.mk"
