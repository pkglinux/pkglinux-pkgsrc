# $NetBSD: Makefile,v 1.21 2022/04/18 19:09:51 adam Exp $

DISTNAME=	libgeotiff-1.7.1
PKGREVISION=	1
CATEGORIES=	geography
MASTER_SITES=	https://download.osgeo.org/geotiff/libgeotiff/

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	https://github.com/OSGeo/libgeotiff
COMMENT=	Library and tools for reading and writing GeoTIFF data
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

TEST_TARGET=	check

# TODO: add options for zlib and jpeg support

.include "../../geography/proj/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
