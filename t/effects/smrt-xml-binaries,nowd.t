smrt xml binaries, outside of a workdir
=======================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug


test with no arguments::

  $ smrt xml binaries
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml binaries nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml binaries $slug/project.xml $slug/packages.xml
  smrt xml: Unknown argument 'SUSE:Maintenance:1302:87808/packages.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path::

  $ smrt xml binaries $slug/packages.xml
  SUSE_Updates_SLE-DESKTOP_12-SP1_x86_64 SUSE:Updates:SLE-DESKTOP:12-SP1:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-DESKTOP_12_x86_64 SUSE:Updates:SLE-DESKTOP:12:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_ppc64le SUSE:Updates:SLE-SERVER:12-SP1:ppc64le ppc64le rsync 3.1.0 6.1 ppc64le/rsync-3.1.0-6.1.ppc64le.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_s390x SUSE:Updates:SLE-SERVER:12-SP1:s390x s390x rsync 3.1.0 6.1 s390x/rsync-3.1.0-6.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_x86_64 SUSE:Updates:SLE-SERVER:12-SP1:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_12_ppc64le SUSE:Updates:SLE-SERVER:12:ppc64le ppc64le rsync 3.1.0 6.1 ppc64le/rsync-3.1.0-6.1.ppc64le.rpm
  SUSE_Updates_SLE-SERVER_12_s390x SUSE:Updates:SLE-SERVER:12:s390x s390x rsync 3.1.0 6.1 s390x/rsync-3.1.0-6.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_12_x86_64 SUSE:Updates:SLE-SERVER:12:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm
