# $NetBSD: Makefile,v 1.16 2022/04/18 19:11:30 adam Exp $

PKGREVISION= 1
.include "../../lang/clang/Makefile.common"

PKGNAME=	${DISTNAME:S/clang/clang-tools-extra/:S/.src//}

COMMENT=	Extra Clang tools

DEPENDS+=	clang>=${LLVM_VERSION}:../../lang/clang

_EXTRA_DIST=		${DISTNAME:S/clang/clang-tools-extra/}${EXTRACT_SUFX}
SITES.${_EXTRA_DIST}=	${MASTER_SITES:=${GITHUB_PROJECT}/releases/download/${GITHUB_RELEASE}/}

DISTFILES=	${DEFAULT_DISTFILES} ${_EXTRA_DIST}

BUILD_TARGET=	clang-change-namespace clang-apply-replacements clang-doc
BUILD_TARGET+=	clang-include-fixer clang-move clang-query clang-reorder-fields
BUILD_TARGET+=	clang-tidy clangd modularize pp-trace tool-template
INSTALL_DIRS=	../build/tools/extra

REPLACE_PYTHON+=	tools/extra/clang-include-fixer/find-all-symbols/tool/run-find-all-symbols.py
REPLACE_PYTHON+=	tools/extra/clang-tidy/tool/clang-tidy-diff.py
REPLACE_PYTHON+=	tools/extra/clang-tidy/tool/run-clang-tidy.py

.PHONY: inject-clang-tools
post-extract: inject-clang-tools
inject-clang-tools:
	${MV} ${WRKDIR}/${DISTNAME:S/clang/clang-tools-extra/} ${WRKSRC}/tools/extra

.include "../../mk/bsd.pkg.mk"
