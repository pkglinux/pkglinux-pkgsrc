# $NetBSD: Makefile,v 1.23 2021/10/02 13:21:00 wen Exp $

DISTNAME=	enum-1.12
PKGNAME=	p5-${DISTNAME}0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=enum/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/enum
COMMENT=	Enumerations for Perl
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/enum/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
