# $NetBSD: Makefile,v 1.17 2022/04/18 19:10:28 adam Exp $

DISTNAME=	dino-0.3.0
PKGREVISION=	2
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_GITHUB:=dino/}
GITHUB_PROJECT=	dino
GITHUB_RELEASE=	v${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/dino/dino/
COMMENT=	Modern XMPP (Jabber) chat client
LICENSE=	gnu-gpl-v3

USE_TOOLS+=		pkg-config
USE_LANGUAGES=		c c++
USE_CMAKE=		yes
USE_PKGLOCALEDIR=	yes

# Failed with exports/xmpp-vala.vapi target as of 0.1.0.
MAKE_JOBS_SAFE=		no

.include "../../chat/libsignal-protocol-c/buildlink3.mk"
.include "../../comms/srtp/buildlink3.mk"
.include "../../converters/qrencode/buildlink3.mk"
BUILDLINK_API_DEPENDS.sqlite3+=	sqlite3>=3.24
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libgee/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
BUILDLINK_DEPMETHOD.vala=	build
.include "../../lang/vala/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.include "../../net/libnice/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../security/gpgme/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../textproc/gspell/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
