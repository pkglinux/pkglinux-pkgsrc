# $NetBSD: Makefile,v 1.35 2021/09/11 23:53:34 wen Exp $

DISTNAME=	Business-ISBN-Data-20210112.006
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Business/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/Business-ISBN-Data
COMMENT=	Data for the p5-Business-ISBN package
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/Business/ISBN/Data/.packlist
REPLACE_PERL+=	make_data.pl

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
