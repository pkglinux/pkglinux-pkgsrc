# $NetBSD: Makefile,v 1.14 2021/11/30 00:45:13 wen Exp $

DISTNAME=	FFI-CheckLib-0.28
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/P/PL/PLICEASE/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/FFI-CheckLib
COMMENT=	Check that a library is available for FFI
LICENSE=	${PERL5_LICENSE}

TEST_DEPENDS+=	p5-Test2-Suite-[0-9]*:../../devel/p5-Test2-Suite
TEST_DEPENDS+=	p5-Test-Exit-[0-9]*:../../devel/p5-Test-Exit

PERL5_PACKLIST=		auto/FFI/CheckLib/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
