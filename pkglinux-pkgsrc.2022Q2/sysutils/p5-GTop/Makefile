# $NetBSD: Makefile,v 1.28 2021/12/08 16:06:35 adam Exp $

DISTNAME=		GTop-0.18
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		8
CATEGORIES=		sysutils perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=GTop/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://metacpan.org/release/GTop
COMMENT=		Perl interface to libgtop

LICENSE=		${PERL5_LICENSE}

USE_TOOLS+=		pkg-config

PERL5_PACKLIST=		auto/GTop/.packlist

.include "../../sysutils/libgtop/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
