# $NetBSD: Makefile,v 1.37 2021/11/30 00:38:32 wen Exp $

DISTNAME=	ExtUtils-Depends-0.8001
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=ExtUtils/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtk2-perl.sourceforge.net/
#HOMEPAGE=	http://search.cpan.org/dist/ExtUtils-Depends/
COMMENT=	Easily build XS extensions that depend on XS extensions
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/ExtUtils/Depends/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
