smrt xml, old repo layout
=========================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2396:114081

  $ reify-fixture $slug


repos::

  $ smrt xml codestreams $slug/project.xml
  SUSE_SLE-11-SP2_Update SUSE:SLE-11-SP2:Update

  $ smrt xml channels $slug/project.xml
  SUSE_Updates_SLE-POS_11-SP3_i586 SUSE:Updates:SLE-POS:11-SP3:i586
  SUSE_Updates_SLE-POS_11-SP3_x86_64 SUSE:Updates:SLE-POS:11-SP3:x86_64
  SUSE_Updates_SLE-SERVER_11-SP3-TERADATA_x86_64 SUSE:Updates:SLE-SERVER:11-SP3-TERADATA:x86_64
  SUSE_Updates_SLE-SERVER_11-SP4_i586 SUSE:Updates:SLE-SERVER:11-SP4:i586
  SUSE_Updates_SLE-SERVER_11-SP4_ia64 SUSE:Updates:SLE-SERVER:11-SP4:ia64
  SUSE_Updates_SLE-SERVER_11-SP4_ppc64 SUSE:Updates:SLE-SERVER:11-SP4:ppc64
  SUSE_Updates_SLE-SERVER_11-SP4_x86_64 SUSE:Updates:SLE-SERVER:11-SP4:x86_64
