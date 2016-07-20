smrt xml, old repo layout
=========================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2396:114081

  $ reify-fixture $slug


repos::

  $ smrt xml repos -s $slug/project.xml # --standard
  SUSE_SLE-11-SP2_Update SUSE:SLE-11-SP2:Update

  $ smrt xml repos -u $slug/project.xml # --update
  SUSE_Updates_SLE-POS_11-SP3_i586 SUSE:Updates:SLE-POS:11-SP3:i586
  SUSE_Updates_SLE-POS_11-SP3_x86_64 SUSE:Updates:SLE-POS:11-SP3:x86_64
  SUSE_Updates_SLE-SERVER_11-SP3-TERADATA_x86_64 SUSE:Updates:SLE-SERVER:11-SP3-TERADATA:x86_64
  SUSE_Updates_SLE-SERVER_11-SP4_i586 SUSE:Updates:SLE-SERVER:11-SP4:i586
  SUSE_Updates_SLE-SERVER_11-SP4_ia64 SUSE:Updates:SLE-SERVER:11-SP4:ia64
  SUSE_Updates_SLE-SERVER_11-SP4_ppc64 SUSE:Updates:SLE-SERVER:11-SP4:ppc64
  SUSE_Updates_SLE-SERVER_11-SP4_x86_64 SUSE:Updates:SLE-SERVER:11-SP4:x86_64


release::

  $ smrt xml release -b $slug/packages.xml # --binaries
  SUSE_Updates_SLE-POS_11-SP3_i586 SUSE:Updates:SLE-POS:11-SP3:i586 i586 xorg-x11-driver-input 7.4 13.64.1 rpm/i586/xorg-x11-driver-input-7.4-13.64.1.i586.rpm
  SUSE_Updates_SLE-POS_11-SP3_x86_64 SUSE:Updates:SLE-POS:11-SP3:x86_64 x86_64 xorg-x11-driver-input 7.4 13.64.1 rpm/x86_64/xorg-x11-driver-input-7.4-13.64.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP3-TERADATA_x86_64 SUSE:Updates:SLE-SERVER:11-SP3-TERADATA:x86_64 x86_64 xorg-x11-driver-input 7.4 13.64.1 rpm/x86_64/xorg-x11-driver-input-7.4-13.64.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP4_i586 SUSE:Updates:SLE-SERVER:11-SP4:i586 i586 xorg-x11-driver-input 7.4 13.64.1 rpm/i586/xorg-x11-driver-input-7.4-13.64.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP4_ia64 SUSE:Updates:SLE-SERVER:11-SP4:ia64 ia64 xorg-x11-driver-input 7.4 13.64.1 rpm/ia64/xorg-x11-driver-input-7.4-13.64.1.ia64.rpm
  SUSE_Updates_SLE-SERVER_11-SP4_ppc64 SUSE:Updates:SLE-SERVER:11-SP4:ppc64 ppc64 xorg-x11-driver-input 7.4 13.64.1 rpm/ppc64/xorg-x11-driver-input-7.4-13.64.1.ppc64.rpm
  SUSE_Updates_SLE-SERVER_11-SP4_x86_64 SUSE:Updates:SLE-SERVER:11-SP4:x86_64 x86_64 xorg-x11-driver-input 7.4 13.64.1 rpm/x86_64/xorg-x11-driver-input-7.4-13.64.1.x86_64.rpm

  $ smrt xml release -s $slug/packages.xml # --sources
  SUSE_SLE-11-SP2_Update xorg-x11-driver-input 7.4 13.64.1
