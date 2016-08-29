smrt bugs browse: effects
=========================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


test::

  $ smrt bugs browse
  Reminder: bugs may be invisible to unauthorized users
  o xdg-open 'https://bugzilla.suse.com/buglist.cgi?bug_id=898513,900914,915410,922710'

  $ smrt bugs browse 922710
  Reminder: bugs may be invisible to unauthorized users
  o xdg-open 'https://bugzilla.suse.com/buglist.cgi?bug_id=922710'

  $ smrt bugs browse 900914 922710 898513
  Reminder: bugs may be invisible to unauthorized users
  o xdg-open 'https://bugzilla.suse.com/buglist.cgi?bug_id=900914,922710,898513'
