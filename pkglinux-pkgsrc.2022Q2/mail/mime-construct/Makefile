# $NetBSD: Makefile,v 1.14 2021/10/20 14:04:41 tm Exp $
#

DISTNAME=	mime-construct-1.11
CATEGORIES=	mail
MASTER_SITES=	http://www.argon.org/~roderick/

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Constructs and emails MIME messages
HOMEPAGE=	http://www.argon.org/~roderick/
LICENSE=	gnu-gpl-v2 OR gnu-gpl-v3 # OR newer

DEPENDS+=	p5-Proc-WaitStat-[0-9]*:../../devel/p5-Proc-WaitStat
DEPENDS+=	p5-MIME-Types-[0-9]*:../../mail/p5-MIME-Types

USE_TOOLS+=	perl:run

PERL5_PACKLIST=	auto/mime-construct/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
