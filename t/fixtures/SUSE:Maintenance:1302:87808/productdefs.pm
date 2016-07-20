%productdefs = (
  '12-Cloud-Compute 5' => {
    'major' => '12',
    'minor' => '',
    'class' => 'cloud',
    'base' => [ 'SLE-SERVER 12' ],
    'archs' => [ 'x86_64' ],
  },
  'BDK 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'sdk',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'OpenStack-Cloud 6' => {
    'major' => '6',
    'minor' => '',
    'class' => 'cloud',
    'base' => [ 'SLE-SERVER 12-SP1' ],
    'archs' => [ 'x86_64' ],
  },
  'RES 5-CLIENT-TOOLS' => {
    'major' => '5',
    'minor' => '',
    'class' => 'manager-client',
    'base' => [ 'RHEL 5' ],
    'archs' => [ 'i386', 'x86_64' ],
  },
  'RES 6-CLIENT-TOOLS' => {
    'major' => '6',
    'minor' => '',
    'class' => 'manager-client',
    'base' => [ 'RHEL 6' ],
    'archs' => [ 'i386', 'x86_64' ],
  },
  'RES 7-CLIENT-TOOLS' => {
    'major' => '7',
    'minor' => '',
    'class' => 'manager-client',
    'base' => [ 'RHEL 7' ],
    'archs' => [ 'x86_64' ],
  },
  'RHEL 5' => {
    'major' => '5',
    'minor' => '',
    'class' => 'rhel',
    'archs' => [ 'i386', 'x86_64' ],
  },
  'RHEL 6' => {
    'major' => '6',
    'minor' => '',
    'class' => 'rhel',
    'archs' => [ 'i386', 'x86_64' ],
  },
  'RHEL 7' => {
    'major' => '7',
    'minor' => '',
    'class' => 'rhel',
    'archs' => [ 'x86_64' ],
  },
  'SLE-BSK 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'bsk',
    'base' => [ 'SLE-SERVER 12' ],
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-BSK 12-SP1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'bsk',
    'base' => [ 'SLE-SERVER 12-SP1' ],
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-DEBUGINFO 10-SP4' => {
    'major' => '10',
    'minor' => 'sp4',
    'class' => 'debug',
    'base' => [ 'SLE-SERVER 10-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-DEBUGINFO 10-SP4-ONLINE' => {
    'major' => '10',
    'minor' => 'sp4',
    'class' => 'debug',
    'base' => [ 'SLE-SERVER 10-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-DEBUGINFO 11-SP1-FOR-SP2' => {
    'major' => '11',
    'minor' => 'sp2',
    'class' => 'debug',
    'base' => [ 'SLE-SERVER 11-SP2' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-DEBUGINFO 11-SP1-TERADATA' => {
    'major' => '11',
    'minor' => 'sp1',
    'class' => 'debug',
    'base' => [ 'SLE-SERVER 11-SP1-TERADATA' ],
    'archs' => [ 'x86_64' ],
  },
  'SLE-DEBUGINFO 11-SP2' => {
    'major' => '11',
    'minor' => 'sp2',
    'class' => 'debug',
    'base' => [ 'SLE-SERVER 11-SP2' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-DEBUGINFO 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'debug',
    'base' => [ 'SLE-SDK 11-SP3', 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-DEBUGINFO 11-SP3-TERADATA' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'debug',
    'base' => [ 'SLE-SERVER 11-SP3-TERADATA' ],
    'archs' => [ 'x86_64' ],
  },
  'SLE-DEBUGINFO 11-SP4' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'debug',
    'base' => [ 'SLE-SDK 11-SP4', 'SLE-SERVER 11-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-DESKTOP 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sled',
    'archs' => [ 'x86_64' ],
  },
  'SLE-DESKTOP 12-SP1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'sled',
    'archs' => [ 'x86_64' ],
  },
  'SLE-HA 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 12' ],
    'archs' => [ 's390x', 'x86_64' ],
  },
  'SLE-HA 12-SP1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 12-SP1' ],
    'archs' => [ 's390x', 'x86_64' ],
  },
  'SLE-HA-GEO 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 12' ],
    'archs' => [ 's390x', 'x86_64' ],
  },
  'SLE-HA-GEO 12-SP1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 12-SP1' ],
    'archs' => [ 's390x', 'x86_64' ],
  },
  'SLE-HAE 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-HAE 11-SP3-GEO' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 's390x', 'x86_64' ],
  },
  'SLE-HAE 11-SP4' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 11-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-HAE 11-SP4-GEO' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'hae',
    'base' => [ 'SLE-SERVER 11-SP4' ],
    'archs' => [ 's390x', 'x86_64' ],
  },
  'SLE-JAVA 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'java',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-Live-Patching 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-Manager-Tools 12' => {
    'major' => '12',
    'class' => 'manager-client',
    'base' => [ 'SLE-SERVER 12' ],
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-Module-Adv-Systems-Management 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-Module-Containers 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-Module-Legacy 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-Module-Public-Cloud 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-Module-Toolchain 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-Module-Web-Scripting 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-POS 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'pos',
    'archs' => [ 'i386', 'x86_64' ],
  },
  'SLE-RT 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'rt',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'x86_64' ],
  },
  'SLE-RT 11-SP4' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'rt',
    'base' => [ 'SLE-SERVER 11-SP4' ],
    'archs' => [ 'x86_64' ],
  },
  'SLE-SAP 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sap-aio',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SAP 12-SP1' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sap-aio',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SAP-AIO 11-SP2' => {
    'major' => '11',
    'minor' => 'sp2',
    'class' => 'sap-aio',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SAP-AIO 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'sap-aio',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SAP-AIO 11-SP4' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'sap-aio',
    'archs' => [ 'ppc64', 'x86_64' ],
  },
  'SLE-SDK 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'sdk',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-SDK 11-SP4' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'sdk',
    'base' => [ 'SLE-SERVER 11-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-SDK 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sdk',
    'base' => [ 'SLE-DESKTOP 12', 'SLE-SERVER 12' ],
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-SDK 12-SP1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'sdk',
    'base' => [ 'SLE-DESKTOP 12-SP1', 'SLE-SERVER 12-SP1' ],
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 10-CLIENT-TOOLS' => {
    'major' => '10',
    'minor' => '',
    'class' => 'manager-client',
    'base' => [ 'SLE-SERVER 10-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 10-SP3-TERADATA' => {
    'major' => '10',
    'minor' => 'sp3',
    'class' => 'teradata',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SERVER 10-SP4' => {
    'major' => '10',
    'minor' => 'sp4',
    'class' => 'sles',
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 10-SP4-LTSS' => {
    'major' => '10',
    'minor' => 'sp4',
    'class' => 'sles',
    'archs' => [ 'i386', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 10-SP4-ONLINE' => {
    'major' => '10',
    'minor' => 'sp4',
    'class' => 'sles',
    'base' => [ 'SLE-SERVER 10-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-PUBCLOUD' => {
    'major' => '11',
    'minor' => '',
    'class' => 'pubcloud',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SECURITY' => {
    'major' => '11',
    'minor' => '',
    'class' => 'security',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP1-FOR-SP2' => {
    'major' => '11',
    'minor' => 'sp2',
    'class' => 'sles',
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP1-TERADATA' => {
    'major' => '11',
    'minor' => 'sp1',
    'class' => 'teradata',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SERVER 11-SP2' => {
    'major' => '11',
    'minor' => 'sp2',
    'class' => 'sles',
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP2-LTSS' => {
    'major' => '11',
    'minor' => 'sp2',
    'class' => 'sles',
    'archs' => [ 'i386', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'sles',
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP3-CLIENT-TOOLS' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'manager-client',
    'base' => [ 'SLE-SERVER 11-SP2' ],
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP3-LTSS' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'sles',
    'archs' => [ 'i386', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP3-TERADATA' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'teradata',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SERVER 11-SP4' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'sles',
    'archs' => [ 'i386', 'ia64', 'ppc64', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 11-SP4-CLIENT-TOOLS' => {
    'major' => '11',
    'minor' => 'sp4',
    'class' => 'manager-client',
    'base' => [ 'SLE-SERVER 11-SP4' ],
    'archs' => [ 'i386', 'ia64', 'ppc', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-SERVER 12-SP1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'sles',
    'archs' => [ 'ppc64le', 's390x', 'x86_64' ],
  },
  'SLE-SLMS 1.3' => {
    'major' => '1',
    'minor' => '3',
    'class' => 'slms',
    'archs' => [ 'x86_64' ],
  },
  'SLE-SMT 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'smt',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'i386', 's390x', 'x86_64' ],
  },
  'SLE-STUDIOONSITE 1.3' => {
    'major' => '1',
    'minor' => '3',
    'class' => 'studio',
    'archs' => [ 'x86_64' ],
  },
  'SLE-STUDIOONSITERUNNER 1.3' => {
    'major' => '1',
    'minor' => '3',
    'class' => 'studiorunner',
    'base' => [ 'SLE-SERVER 11-SP2' ],
    'archs' => [ 's390x' ],
  },
  'SLE-WE 12' => {
    'major' => '12',
    'minor' => '',
    'class' => 'we',
    'base' => [ 'SLE-SERVER 12' ],
    'archs' => [ 'x86_64' ],
  },
  'SLE-WE 12-SP1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'we',
    'base' => [ 'SLE-SERVER 12-SP1' ],
    'archs' => [ 'x86_64' ],
  },
  'SLE-WEBYAST 1.3' => {
    'major' => '1',
    'minor' => '3',
    'class' => 'webyast',
    'base' => [ 'SLE-SERVER 11-SP2' ],
    'archs' => [ 'i386', 's390x', 'x86_64' ],
  },
  'SLES4VMWARE 11-SP3' => {
    'major' => '11',
    'minor' => 'sp3',
    'class' => 'sles4vmware',
    'archs' => [ 'i386', 'x86_64' ],
  },
  'SUSE-CLOUD 5' => {
    'major' => '5',
    'minor' => '',
    'class' => 'cloud',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'x86_64' ],
  },
  'SUSE-MANAGER 2.1' => {
    'major' => '2',
    'minor' => '1',
    'class' => 'manager',
    'archs' => [ 's390x', 'x86_64' ],
  },
  'SUSE-MANAGER-PROXY 2.1' => {
    'major' => '2',
    'minor' => '1',
    'class' => 'manager-proxy',
    'archs' => [ 'x86_64' ],
  },
  'SUSE-Manager-Proxy 3.0' => {
    'major' => '3',
    'minor' => '0',
    'class' => 'manager-proxy',
    'archs' => [ 'x86_64' ],
  },
  'SUSE-Manager-Server 3.0' => {
    'major' => '3',
    'minor' => '0',
    'class' => 'manager',
    'archs' => [ 's390x', 'x86_64' ],
  },
  'Storage 1.0' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'x86_64' ],
  },
  'Storage 2' => {
    'major' => '12',
    'minor' => '',
    'class' => 'sles',
    'archs' => [ 'x86_64' ],
  },
  'Storage 2.1' => {
    'major' => '12',
    'minor' => 'sp1',
    'class' => 'sles',
    'archs' => [ 'x86_64' ],
  },
  'Update Cloud5-Test' => {
    'major' => '5',
    'minor' => '',
    'class' => 'cloud',
    'base' => [ 'SLE-SERVER 11-SP3' ],
    'archs' => [ 'x86_64' ],
  },
  'openSUSE 13.1' => {
    'major' => '13',
    'minor' => '1',
    'class' => 'opensuse',
    'archs' => [ 'i386', 'x86_64' ],
  },
  'openSUSE 13.2' => {
    'major' => '13',
    'minor' => '2',
    'class' => 'opensuse',
    'archs' => [ 'i386', 'x86_64' ],
  },
  'openSUSE 42.1' => {
    'major' => '42',
    'minor' => '1',
    'class' => 'opensuse',
    'archs' => [ 'x86_64' ],
  },
);