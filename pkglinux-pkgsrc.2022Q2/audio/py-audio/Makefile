# $NetBSD: Makefile,v 1.6 2022/03/28 10:43:38 tnn Exp $

DISTNAME=	PyAudio-0.2.11
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/PyA/a/}
PKGREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_PYPI:=P/PyAudio/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://people.csail.mit.edu/hubert/pyaudio/
COMMENT=	Python bindings for PortAudio
LICENSE=	mit

.include "../../lang/python/egg.mk"
.include "../../audio/portaudio/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
