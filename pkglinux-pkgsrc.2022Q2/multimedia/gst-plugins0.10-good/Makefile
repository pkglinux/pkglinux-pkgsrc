# $NetBSD: Makefile,v 1.37 2022/04/18 19:09:59 adam Exp $
#

.include "Makefile.common"
PKGREVISION=		10

COMMENT+=		Good plugins

# some plugins were moved from bad to good
CONFLICTS+=		gst-plugins0.10-bad<0.10.18

.include "options.mk"

CONFIGURE_ARGS+=	--enable-zlib
CONFIGURE_ARGS+=	--enable-annodex

GCONF_SCHEMAS=		gstreamer-0.10.schemas

# only useful if gstreamer was built with the "gstcheck" option
TEST_TARGET=		check-torture

post-install:
.if !empty(PKG_OPTIONS:Mgconf)
	${INSTALL_DATA} ${WRKSRC}/gconf/gstreamer-0.10.schemas \
		${DESTDIR}${GCONF_SCHEMAS_DIR}
.endif

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
