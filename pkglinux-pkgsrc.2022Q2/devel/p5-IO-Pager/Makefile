# $NetBSD: Makefile,v 1.30 2021/07/28 03:23:33 wen Exp $
#

DISTNAME=	IO-Pager-2.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/release/IO-Pager
COMMENT=	Perl module for paged I/O to the terminal
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-File-Which-[0-9]*:../../devel/p5-File-Which
REPLACE_PERL+=	lib/IO/Pager/tp

PERL5_PACKLIST=		auto/IO/Pager/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
