# $NetBSD: Makefile,v 1.9 2021/09/05 01:46:12 wen Exp $

DISTNAME=		HTML-CalendarMonthSimple-1.26
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		https://metacpan.org/release/HTML-CalendarMonthSimple
COMMENT=		Perl Module for Generating HTML Calendars
LICENSE=		public-domain

DEPENDS+=		p5-Date-Calc>=0:../../devel/p5-Date-Calc

PERL5_PACKLIST=		auto/HTML/CalendarMonthSimple/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
