smrt xml bugs, outside of a workdir
===================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug


test with no arguments::

  $ smrt xml bugs
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml bugs nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml bugs $slug/project.xml $slug/patchinfo.xml
  smrt xml: Unknown argument 'SUSE:Maintenance:1302:87808/patchinfo.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path::

  $ smrt xml bugs $slug/patchinfo.xml
  bnc898513 Rsync: slp support breaks rsync usage
  bnc900914 VUL-1: CVE-2014-8242: librsync, rsync: checksum collisions leading to a denial of service
  bnc915410 VUL-0: CVE-2014-9512: rsync: path spoofing attack vulnerability
  bnc922710 rsyncd keeps on spamming my log for trying to register SLP
