smrt xml bugs, inside a workdir
===============================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


test with an explicit, nonexistent argument::

  $ smrt xml bugs nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml bugs project.xml patchinfo.xml
  smrt xml: Unknown argument 'patchinfo.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path, with an explicit argument::

  $ smrt xml bugs patchinfo.xml
  bnc898513 Rsync: slp support breaks rsync usage
  bnc900914 VUL-1: CVE-2014-8242: librsync, rsync: checksum collisions leading to a denial of service
  bnc915410 VUL-0: CVE-2014-9512: rsync: path spoofing attack vulnerability
  bnc922710 rsyncd keeps on spamming my log for trying to register SLP

test the happy path, with no arguments::

  $ smrt xml bugs
  bnc898513 Rsync: slp support breaks rsync usage
  bnc900914 VUL-1: CVE-2014-8242: librsync, rsync: checksum collisions leading to a denial of service
  bnc915410 VUL-0: CVE-2014-9512: rsync: path spoofing attack vulnerability
  bnc922710 rsyncd keeps on spamming my log for trying to register SLP
