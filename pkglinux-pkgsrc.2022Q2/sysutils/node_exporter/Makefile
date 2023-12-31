# $NetBSD: Makefile,v 1.35 2022/06/02 18:52:06 bsiegert Exp $

DISTNAME=	node_exporter-1.0.1
MASTER_SITES=	${MASTER_SITE_GITHUB:=prometheus/}
PKGREVISION=	19
CATEGORIES=	sysutils
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@pkgsrc.org
HOMEPAGE=	https://github.com/prometheus/node_exporter
COMMENT=	Prometheus exporter for hardware and OS metrics
LICENSE=	apache-2.0

GO_DIST_BASE=	${DISTNAME}
GO_SRCPATH=	github.com/prometheus/node_exporter

NEXP_GO_FLAG_PREFIX=	-X ${GO_SRCPATH}/vendor/${GO_SRCPATH:H}/common/version
NEXP_GO_FLAGS+=		-s
NEXP_GO_FLAGS+=		${NEXP_GO_FLAG_PREFIX}.Version=${PKGVERSION_NOREV}
NEXP_GO_FLAGS+=		${NEXP_GO_FLAG_PREFIX}.Revision=${PKGREVISION}
NEXP_GO_FLAGS+=		${NEXP_GO_FLAG_PREFIX}.Branch=${GITHUB_TAG}

do-build:
	${RUN} ${PKGSRC_SETENV} ${MAKE_ENV} \
		${GO} build -ldflags "${NEXP_GO_FLAGS}" ${GO_BUILD_PATTERN}
	${RUN} ${PKGSRC_SETENV} ${MAKE_ENV} \
		${GO} install -ldflags "${NEXP_GO_FLAGS}" ${GO_BUILD_PATTERN}

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/node_exporter ${DESTDIR}${PREFIX}/bin

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
