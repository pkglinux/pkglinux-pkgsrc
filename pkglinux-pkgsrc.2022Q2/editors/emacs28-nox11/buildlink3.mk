# $NetBSD: buildlink3.mk,v 1.1 2022/04/06 22:41:03 wiz Exp $
#

BUILDLINK_TREE+=	emacs-nox11

.if !defined(EMACS_NOX11_BUILDLINK3_MK)
EMACS_NOX11_BUILDLINK3_MK:=

.include "../../editors/emacs/modules.mk"
BUILDLINK_API_DEPENDS.emacs-nox11+=	${_EMACS_REQD}
BUILDLINK_PKGSRCDIR.emacs-nox11?=	${_EMACS_PKGDIR}

BUILDLINK_CONTENTS_FILTER.emacs-nox11=	${EGREP} '.*\.el$$|.*\.elc$$'
.endif # EMACS_NOX11_BUILDLINK3_MK

BUILDLINK_TREE+=	-emacs-nox11
