# $NetBSD: Makefile,v 1.42 2022/04/30 03:43:40 wen Exp $

DISTNAME=	POE-1.370
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://poe.perl.org/
#HOMEPAGE=	http://search.cpan.org/dist/POE/
COMMENT=	Perl Object Environment
LICENSE=	${PERL5_LICENSE}

#DEPENDS+=	{perl>=5.9.3,p5-IO-Compress>=2.017}:../../devel/p5-IO-Compress	# Compress::Zlib>=1.33
DEPENDS+=	p5-Curses>=1.08:../../devel/p5-Curses
DEPENDS+=	p5-Event>=1.00:../../devel/p5-Event
DEPENDS+=	p5-IO-tty>=1.08:../../devel/p5-IO-Tty
DEPENDS+=	p5-POE-Test-Loops>=1.360:../../devel/p5-POE-Test-Loops
DEPENDS+=	p5-Socket6>=0.14:../../net/p5-Socket6
DEPENDS+=	p5-Term-ReadKey>=2.21:../../devel/p5-Term-ReadKey
#DEPENDS+=	{perl>=5.8.5,p5-Term-Cap>=1.09}:../../devel/p5-Term-Cap
#DEPENDS+=	{perl>=5.8.4,p5-Time-HiRes>=1.59}:../../time/p5-Time-HiRes
DEPENDS+=	p5-URI>=1.30:../../www/p5-URI
DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=	p5-IO-Pipely>=0.005:../../devel/p5-IO-Pipely

# for make test
BUILD_DEPENDS+=	p5-Email-MIME-RFC2047-[0-9]*:../../mail/p5-Email-MIME-RFC2047

MAKE_PARAMS+=	--default
PERL5_PACKLIST=	auto/POE/.packlist

REPLACE_PERL=	lib/POE/Wheel/Curses.pm

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
