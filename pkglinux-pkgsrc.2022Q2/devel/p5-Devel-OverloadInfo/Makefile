# $NetBSD: Makefile,v 1.15 2021/10/02 07:53:20 wen Exp $

DISTNAME=	Devel-OverloadInfo-0.007
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Devel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Devel-OverloadInfo
COMMENT=	Perl 5 module for introspect overloaded operators
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-MRO-Compat>=0:../../devel/p5-MRO-Compat

BUILD_DEPENDS+=	p5-Package-Stash-[0-9]*:../../devel/p5-Package-Stash

PERL5_PACKLIST=	auto/Devel/OverloadInfo/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
