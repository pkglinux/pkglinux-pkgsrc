# $NetBSD: Makefile,v 1.46 2022/05/14 04:42:28 adam Exp $

DISTNAME=	ansible-5.7.1
CATEGORIES=	sysutils python
MASTER_SITES=	${MASTER_SITE_PYPI:=a/ansible/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.ansible.com/
COMMENT=	SSH-based configuration management, deployment, and task execution
LICENSE=	gnu-gpl-v3

PREV_PKGPATH=	sysutils/ansible2

DEPENDS+=	ansible-core>=2.12.5:../../sysutils/ansible-core

USE_LANGUAGES=	# none

REPLACE_PYTHON+=	ansible_collections/*/*/.azure-pipelines/scripts/*.py
REPLACE_PYTHON+=	ansible_collections/*/*/tests/*/*.py
REPLACE_PYTHON+=	ansible_collections/*/*/tests/*/*/*.py
REPLACE_PYTHON+=	ansible_collections/*/*/tests/*/*/*/*.py
REPLACE_PYTHON+=	ansible_collections/community/digitalocean/scripts/inventory/*.py
REPLACE_PYTHON+=	ansible_collections/community/dns/update-docs-fragments.py
REPLACE_PYTHON+=	ansible_collections/community/general/scripts/inventory/*.py
REPLACE_PYTHON+=	ansible_collections/community/general/scripts/vault/*.py
REPLACE_PYTHON+=	ansible_collections/community/general/tests/integration/targets/django_manage/files/base_test/*/*/*.py
REPLACE_PYTHON+=	ansible_collections/community/hashi_vault/.github/actions/ansible-codecov/process.py
REPLACE_PYTHON+=	ansible_collections/community/hashi_vault/.github/actions/docker-image-versions/versions.py
REPLACE_PYTHON+=	ansible_collections/community/okd/ci/downstream_fragments.py
REPLACE_PYTHON+=	ansible_collections/ngine_io/cloudstack/scripts/inventory/cloudstack.py
REPLACE_PYTHON+=	ansible_collections/ovirt/ovirt/roles/disaster_recovery/files/*.py
REPLACE_PYTHON+=	ansible_collections/ovirt/ovirt/roles/disaster_recovery/files/ovirt-dr
REPLACE_PYTHON+=	ansible_collections/sensu/sensu_go/fix-pytest-ini.py
REPLACE_PYTHON+=	ansible_collections/sensu/sensu_go/tools/windows-versions.py

CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/*/*/.azure-pipelines/scripts/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/*/*/tests/*/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/*/*/tests/*/*/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/*/*/tests/*/*/*/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/netbox/netbox/hacking/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/community/hashi_vault/docs/preview/build.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/community/kubernetes/utils/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/community/okd/ci/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/community/vmware/check-ignores-order
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/community/zabbix/roles/zabbix_proxy/files/*.bsx
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/community/zabbix/roles/zabbix_server/files/*.bsx
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/cyberark/conjur/ci/*
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/cyberark/conjur/roles/conjur_host_identity/tests/test.sh*
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/infinidat/infinibox/bin/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/ovirt/ovirt/automation/*.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/ovirt/ovirt/build.sh
CHECK_INTERPRETER_SKIP+=	${PYSITELIB}/ansible_collections/sensu/sensu_go/docker/*.sh

post-extract:
	${FIND} ${WRKSRC}/ansible_collections -name .DS_Store -delete

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
