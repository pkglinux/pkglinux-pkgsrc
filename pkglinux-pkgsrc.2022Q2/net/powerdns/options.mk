# $NetBSD: options.mk,v 1.9 2022/04/01 08:07:28 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.powerdns
PKG_SUPPORTED_OPTIONS=	bind botan luarecords pipe random remote sqlite tools zeromq
PKG_SUGGESTED_OPTIONS=	bind luarecords pipe random

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		bind luarecords pipe random remote sqlite tools

.if !empty(PKG_OPTIONS:Mbind)
PDNS_MODULES+=		bind
PLIST.bind=		yes
.endif

.if !empty(PKG_OPTIONS:Mbotan)
.include "../../devel/gmp/buildlink3.mk"
.include "../../security/botan2/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mluarecords)
CONFIGURE_ARGS+=	--enable-lua-records
.else
CONFIGURE_ARGS+=	--disable-lua-records
.endif

.if !empty(PKG_OPTIONS:Mpipe)
PLIST.pipe=		yes
PDNS_MODULES+=		pipe
.endif

.if !empty(PKG_OPTIONS:Mrandom)
PLIST.random=		yes
PDNS_MODULES+=		random
.endif

.if !empty(PKG_OPTIONS:Mremote)
PLIST.remote=		yes
PDNS_MODULES+=		remote
.endif

.if !empty(PKG_OPTIONS:Msqlite)
PDNS_MODULES+=		gsqlite3
PLIST.sqlite=		yes
.include "../../databases/sqlite3/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mtools)
CONFIGURE_ARGS+=	--enable-tools
PLIST.tools=		yes
.endif

.if !empty(PKG_OPTIONS:Mzeromq)
.  if empty(PKG_OPTIONS:Mremote)
PKG_FAIL_REASON+=	"The 'zeromq' option requires the 'remote' option enabled."
.  else
CONFIGURE_ARGS+=	--enable-remotebackend-zeromq=yes
.include "../../net/zeromq/buildlink3.mk"
.  endif
.else
CONFIGURE_ARGS+=	--enable-remotebackend-zeromq=no
.endif
