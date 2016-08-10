smrt xml channels, outside of a workdir
=======================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug


test with no arguments::

  $ smrt xml channels
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml channels nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml channels $slug/packages.xml $slug/project.xml
  smrt xml: Unknown argument 'SUSE:Maintenance:1302:87808/project.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path::

  $ smrt xml channels $slug/project.xml
  SUSE_Updates_SLE-DESKTOP_12-SP1_x86_64 SUSE:Updates:SLE-DESKTOP:12-SP1:x86_64
  SUSE_Updates_SLE-DESKTOP_12_x86_64 SUSE:Updates:SLE-DESKTOP:12:x86_64
  SUSE_Updates_SLE-SERVER_12-SP1_ppc64le SUSE:Updates:SLE-SERVER:12-SP1:ppc64le
  SUSE_Updates_SLE-SERVER_12-SP1_s390x SUSE:Updates:SLE-SERVER:12-SP1:s390x
  SUSE_Updates_SLE-SERVER_12-SP1_x86_64 SUSE:Updates:SLE-SERVER:12-SP1:x86_64
  SUSE_Updates_SLE-SERVER_12_ppc64le SUSE:Updates:SLE-SERVER:12:ppc64le
  SUSE_Updates_SLE-SERVER_12_s390x SUSE:Updates:SLE-SERVER:12:s390x
  SUSE_Updates_SLE-SERVER_12_x86_64 SUSE:Updates:SLE-SERVER:12:x86_64
