# $NetBSD: Makefile,v 1.4 2022/04/24 15:32:05 tnn Exp $

DISTNAME=	SourceHanSansOTF-1.000
PKGNAME=	${DISTNAME:S/SourceHanSansOTF/sourcehansans-fonts/}
CATEGORIES=	fonts
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=source-han-sans.adobe/}
EXTRACT_SUFX=	.zip

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/adobe-fonts/source-han-sans
COMMENT=	Set of Pan-CJK fonts from Adobe
LICENSE=	apache-2.0

USE_LANGUAGES=	# none
NO_BUILD=	yes

FONTDIR=	${PREFIX}/share/fonts/X11/TTF
FONTS_DIRS.ttf=	${FONTDIR}

INSTALLATION_DIRS=	share/fonts/X11/TTF

INSTALL_FONTS=	SourceHanSans-Bold.otf \
		SourceHanSans-ExtraLight.otf \
		SourceHanSans-Heavy.otf \
		SourceHanSans-Light.otf \
		SourceHanSans-Medium.otf \
		SourceHanSans-Normal.otf \
		SourceHanSans-Regular.otf

do-install:
.for i in ${INSTALL_FONTS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DESTDIR}${FONTDIR}
.endfor

.include "../../mk/bsd.pkg.mk"
