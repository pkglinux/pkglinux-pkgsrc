# $NetBSD: Makefile,v 1.28 2022/01/25 02:02:52 wiz Exp $

DISTNAME=	Package-DeprecationManager-0.17
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	6
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Package/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Package-DeprecationManager
COMMENT=	Perl 5 module to manage deprecation warnings
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Package/DeprecationManager/.packlist

DEPENDS+=	p5-Package-Stash-[0-9]*:../../devel/p5-Package-Stash
DEPENDS+=	p5-Params-Util-[0-9]*:../../devel/p5-Params-Util
DEPENDS+=	p5-Sub-Install-[0-9]*:../../devel/p5-Sub-Install
DEPENDS+=	p5-Sub-Name-[0-9]*:../../devel/p5-Sub-Name
#DEPENDS+=	p5-namespace-autoclean-[0-9]*:../../devel/p5-namespace-autoclean

#TEST_DEPENDS+=		p5-Test-Exception-[0-9]*:../../devel/p5-Test-Exception
TEST_DEPENDS+=		p5-Test-Fatal-[0-9]*:../../devel/p5-Test-Fatal
#TEST_DEPENDS+=		p5-Test-Requires-[0-9]*:../../devel/p5-Test-Requires
TEST_DEPENDS+=		p5-Test-Warn-[0-9]*:../../devel/p5-Test-Warn
TEST_DEPENDS+=		p5-Test-Warnings-[0-9]*:../../devel/p5-Test-Warnings

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
