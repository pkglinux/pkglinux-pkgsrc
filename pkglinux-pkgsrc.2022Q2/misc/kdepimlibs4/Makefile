# $NetBSD: Makefile,v 1.109 2022/04/18 19:09:58 adam Exp $

DISTNAME=	kdepimlibs-4.14.10
PKGNAME=	${DISTNAME:S/-4/4-4/}
PKGREVISION=	35
CATEGORIES=	misc
COMMENT=	Support libraries for PIM for the KDE integrated X11 desktop
MASTER_SITES=	${MASTER_SITE_KDE:=applications/15.04.3/src/}

post-install:
	sed -i "s:${WRKDIR}/.buildlink/include:${PREFIX}/include/KDE:g" \
		${DESTDIR}${PREFIX}/lib/gpgmepp/GpgmeppConfig.cmake
	sed -i "s:${WRKSRC}/_KDE_build:${PREFIX}:g" \
		${DESTDIR}${PREFIX}/lib/gpgmepp/GpgmeppConfig.cmake
	sed -i 's:GPGMEPP_PTHREAD_LIBRARIES "${PREFIX}/lib/libgpgme++.so":GPGMEPP_PTHREAD_LIBRARIES "${PREFIX}/lib/libgpgme++-pthread.so":g' \
		${DESTDIR}${PREFIX}/lib/gpgmepp/GpgmeppConfig.cmake
	sed -i "s:${WRKDIR}/.buildlink:${PREFIX}:g" \
		${DESTDIR}${PREFIX}/lib/gpgmepp/GpgmeppLibraryDepends.cmake
	${MKDIR} -pv ${DESTDIR}${PREFIX}/lib/cmake/
	cd ${DESTDIR}${PREFIX}/lib/cmake/ && ${CP} -av ../gpgmepp .
	cd ${DESTDIR}${PREFIX}/lib/cmake/gpgmepp/ && ${CP} -v GpgmeppConfig.cmake gpgmeppConfig.cmake
	

.include "../../meta-pkgs/kde4/Makefile.kde4"

CMAKE_DEPENDENCIES_REWRITE=	_KDE_build/KDEPimLibsDependencies.cmake

CMAKE_ARGS+=	-DKDE4_BUILD_TESTS:BOOL=OFF

# for strcasecmp
CFLAGS.SunOS+=	-D__EXTENSIONS__

REPLACE_PERL+=	mailtransport/kconf_update/migrate-transports.pl

BUILDLINK_API_DEPENDS.akonadi+=	akonadi>=1.8.51

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../databases/openldap-client/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.if ${OPSYS} == "Linux"
.include "../../devel/libuuid/buildlink3.mk"
.endif
.include "../../devel/qjson/buildlink3.mk"
.include "../../mail/akonadi/buildlink3.mk"
#.include "../../misc/nepomuk-core/buildlink3.mk"
.include "../../security/cyrus-sasl/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../time/libical/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
