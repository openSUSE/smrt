smrt bugs: effects
==================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


test::

  $ smrt bugs urls
  https://bugzilla.suse.com/show_bug.cgi?id=898513
  https://bugzilla.suse.com/show_bug.cgi?id=900914
  https://bugzilla.suse.com/show_bug.cgi?id=915410
  https://bugzilla.suse.com/show_bug.cgi?id=922710

  $ smrt bugs urls 898513 915410
  https://bugzilla.suse.com/show_bug.cgi?id=898513
  https://bugzilla.suse.com/show_bug.cgi?id=915410
