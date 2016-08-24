smrt xml channels, inside a workdir
===================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


test with an explicit, nonexistent argument::

  $ smrt xml channels nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml channels project.xml packages.xml
  smrt xml: Unknown argument 'packages.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path, with an explicit pathname argument::

  $ mv project.xml other

  $ smrt xml channels other
  SUSE_Updates_SLE-DESKTOP_12-SP1_x86_64 SUSE:Updates:SLE-DESKTOP:12-SP1:x86_64
  SUSE_Updates_SLE-DESKTOP_12_x86_64 SUSE:Updates:SLE-DESKTOP:12:x86_64
  SUSE_Updates_SLE-SERVER_12-SP1_ppc64le SUSE:Updates:SLE-SERVER:12-SP1:ppc64le
  SUSE_Updates_SLE-SERVER_12-SP1_s390x SUSE:Updates:SLE-SERVER:12-SP1:s390x
  SUSE_Updates_SLE-SERVER_12-SP1_x86_64 SUSE:Updates:SLE-SERVER:12-SP1:x86_64
  SUSE_Updates_SLE-SERVER_12_ppc64le SUSE:Updates:SLE-SERVER:12:ppc64le
  SUSE_Updates_SLE-SERVER_12_s390x SUSE:Updates:SLE-SERVER:12:s390x
  SUSE_Updates_SLE-SERVER_12_x86_64 SUSE:Updates:SLE-SERVER:12:x86_64

test the happy path, with "-" for stdin::

  $ smrt xml channels - < other
  SUSE_Updates_SLE-DESKTOP_12-SP1_x86_64 SUSE:Updates:SLE-DESKTOP:12-SP1:x86_64
  SUSE_Updates_SLE-DESKTOP_12_x86_64 SUSE:Updates:SLE-DESKTOP:12:x86_64
  SUSE_Updates_SLE-SERVER_12-SP1_ppc64le SUSE:Updates:SLE-SERVER:12-SP1:ppc64le
  SUSE_Updates_SLE-SERVER_12-SP1_s390x SUSE:Updates:SLE-SERVER:12-SP1:s390x
  SUSE_Updates_SLE-SERVER_12-SP1_x86_64 SUSE:Updates:SLE-SERVER:12-SP1:x86_64
  SUSE_Updates_SLE-SERVER_12_ppc64le SUSE:Updates:SLE-SERVER:12:ppc64le
  SUSE_Updates_SLE-SERVER_12_s390x SUSE:Updates:SLE-SERVER:12:s390x
  SUSE_Updates_SLE-SERVER_12_x86_64 SUSE:Updates:SLE-SERVER:12:x86_64
