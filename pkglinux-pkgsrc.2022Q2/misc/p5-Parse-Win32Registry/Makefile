# $NetBSD: Makefile,v 1.11 2021/09/12 01:57:21 wen Exp $

DISTNAME=		Parse-Win32Registry-1.1
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		misc perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Parse/}

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Parse Windows Registry Files
LICENSE=		${PERL5_LICENSE}

PERL5_PACKLIST=		auto/Parse/Win32Registry/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
