# $NetBSD: Makefile,v 1.19 2021/12/08 16:02:13 adam Exp $

DISTNAME=	Cairo-GObject-1.005
PKGNAME=	p5-${DISTNAME:tl}
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtk2-perl/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtk2-perl.sourceforge.net/
COMMENT=	Perl module to integrate Cairo into the Glib type system
LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=	pkg-config

BUILD_DEPENDS+=	p5-ExtUtils-Depends>=0.2:../../devel/p5-ExtUtils-Depends
BUILD_DEPENDS+=	p5-ExtUtils-PkgConfig>=1:../../devel/p5-ExtUtils-PkgConfig

PERL5_PACKLIST=	auto/Cairo/GObject/.packlist

BUILDLINK_API_DEPENDS.p5-glib2+=	p5-glib2>=1.224
.include "../../devel/p5-glib2/buildlink3.mk"
BUILDLINK_API_DEPENDS.p5-cairo+=	p5-cairo>=1.080
.include "../../graphics/p5-cairo/buildlink3.mk"
.include "../../graphics/cairo-gobject/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
