# $NetBSD: options.mk,v 1.6 2022/03/13 15:07:13 gdt Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.unison
PKG_SUPPORTED_OPTIONS=	lablgtk

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mlablgtk)
MAKE_FLAGS+=	UISTYLE=gtk2

DEPENDS+=	font-schumacher-misc>=1.0:../../fonts/font-schumacher-misc

BUILDLINK_API_DEPENDS.ocaml-lablgtk+= ocaml-lablgtk>=2.16.0
.include "../../x11/ocaml-lablgtk/buildlink3.mk"
.else
MAKE_FLAGS+=	UISTYLE=text
.endif
