smrt xml
========

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808

  $ reify-fixture $slug


bugs::

  $ smrt xml bugs $slug/patchinfo.xml
  bnc898513 Rsync: slp support breaks rsync usage
  bnc900914 VUL-1: CVE-2014-8242: librsync, rsync: checksum collisions leading to a denial of service
  bnc915410 VUL-0: CVE-2014-9512: rsync: path spoofing attack vulnerability
  bnc922710 rsyncd keeps on spamming my log for trying to register SLP


bugowner::

  $ smrt xml maintainers $slug/owners-rsync.xml # --names
  person farmer

  $ smrt xml email $slug/person-farmer.xml # --email
  farmer@example.com


diff::

  $ rm $slug/request.diff
  $ diff -u $FIXTURES/$slug/request.diff =(smrt xml diff $slug/request.diff.xml)

repos::

  $ smrt xml repos -s $slug/project.xml # --standard
  SUSE_SLE-12_Update SUSE:SLE-12:Update

  $ smrt xml repos -u $slug/project.xml # --update
  SUSE_Updates_SLE-DESKTOP_12-SP1_x86_64 SUSE:Updates:SLE-DESKTOP:12-SP1:x86_64
  SUSE_Updates_SLE-DESKTOP_12_x86_64 SUSE:Updates:SLE-DESKTOP:12:x86_64
  SUSE_Updates_SLE-SERVER_12-SP1_ppc64le SUSE:Updates:SLE-SERVER:12-SP1:ppc64le
  SUSE_Updates_SLE-SERVER_12-SP1_s390x SUSE:Updates:SLE-SERVER:12-SP1:s390x
  SUSE_Updates_SLE-SERVER_12-SP1_x86_64 SUSE:Updates:SLE-SERVER:12-SP1:x86_64
  SUSE_Updates_SLE-SERVER_12_ppc64le SUSE:Updates:SLE-SERVER:12:ppc64le
  SUSE_Updates_SLE-SERVER_12_s390x SUSE:Updates:SLE-SERVER:12:s390x
  SUSE_Updates_SLE-SERVER_12_x86_64 SUSE:Updates:SLE-SERVER:12:x86_64


release::

  $ smrt xml release -b $slug/packages.xml # --binaries
  SUSE_Updates_SLE-DESKTOP_12-SP1_x86_64 SUSE:Updates:SLE-DESKTOP:12-SP1:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-DESKTOP_12_x86_64 SUSE:Updates:SLE-DESKTOP:12:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_ppc64le SUSE:Updates:SLE-SERVER:12-SP1:ppc64le ppc64le rsync 3.1.0 6.1 ppc64le/rsync-3.1.0-6.1.ppc64le.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_s390x SUSE:Updates:SLE-SERVER:12-SP1:s390x s390x rsync 3.1.0 6.1 s390x/rsync-3.1.0-6.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_x86_64 SUSE:Updates:SLE-SERVER:12-SP1:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_12_ppc64le SUSE:Updates:SLE-SERVER:12:ppc64le ppc64le rsync 3.1.0 6.1 ppc64le/rsync-3.1.0-6.1.ppc64le.rpm
  SUSE_Updates_SLE-SERVER_12_s390x SUSE:Updates:SLE-SERVER:12:s390x s390x rsync 3.1.0 6.1 s390x/rsync-3.1.0-6.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_12_x86_64 SUSE:Updates:SLE-SERVER:12:x86_64 x86_64 rsync 3.1.0 6.1 x86_64/rsync-3.1.0-6.1.x86_64.rpm

  $ smrt xml release -s $slug/packages.xml # --sources
  SUSE_SLE-12_Update rsync 3.1.0 6.1
