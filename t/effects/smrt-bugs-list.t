smrt bugs list: effects
=======================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


test::

  $ smrt bugs list
  https://bugzilla.suse.com/show_bug.cgi?id=898513
  Rsync: slp support breaks rsync usage
  
  https://bugzilla.suse.com/show_bug.cgi?id=900914
  VUL-1: CVE-2014-8242: librsync, rsync: checksum collisions leading to a denial of service
  
  https://bugzilla.suse.com/show_bug.cgi?id=915410
  VUL-0: CVE-2014-9512: rsync: path spoofing attack vulnerability
  
  https://bugzilla.suse.com/show_bug.cgi?id=922710
  rsyncd keeps on spamming my log for trying to register SLP


  $ smrt bugs list 915410 922710
  https://bugzilla.suse.com/show_bug.cgi?id=915410
  VUL-0: CVE-2014-9512: rsync: path spoofing attack vulnerability
  
  https://bugzilla.suse.com/show_bug.cgi?id=922710
  rsyncd keeps on spamming my log for trying to register SLP
