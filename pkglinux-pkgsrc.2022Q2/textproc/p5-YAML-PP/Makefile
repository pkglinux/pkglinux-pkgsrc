# $NetBSD: Makefile,v 1.11 2021/10/30 09:01:22 wen Exp $

DISTNAME=	YAML-PP-0.029
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/T/TI/TINITA/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://metacpan.org/pod/YAML::PP
COMMENT=		Modern, modular YAML processor
LICENSE=		${PERL5_LICENSE}

TEST_DEPENDS+=		p5-Test-Deep-[0-9]*:../../devel/p5-Test-Deep
TEST_DEPENDS+=		p5-Test-Warn-[0-9]*:../../devel/p5-Test-Warn

PERL5_PACKLIST=		auto/YAML/PP/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
