# $NetBSD: Makefile,v 1.51 2022/04/18 19:12:11 adam Exp $

DISTNAME=	XML-LibXSLT-1.99
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	5
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	adam@migus.org
HOMEPAGE=	https://metacpan.org/release/XML-LibXSLT
COMMENT=	Perl interface to the libxslt library
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-XML-LibXML>=1.70:../../textproc/p5-XML-LibXML

USE_TOOLS+=	pkg-config
PERL5_PACKLIST=	auto/XML/LibXSLT/.packlist

.include "../../textproc/libxslt/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
