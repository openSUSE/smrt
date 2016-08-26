smrt update
===========

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ fake ssh <<\EOF
  > exit 0
  > EOF


not an attached host::

  $ cd $slug
  $ smrt update snafubar
  error: snafubar is not attached
  [1]
