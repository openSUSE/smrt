smrt detach: effects
====================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ fake ssh <<\EOF
  > exit 0
  > EOF


test::

  $ cd $slug

  $ smrt attach snafubar -- rofl lmao
  Connecting to snafubar for rofl lmao

  $ cat .connected/snafubar
  rofl
  lmao

  $ smrt detach snafubar
  Disconnecting from snafubar

  $ test -e .connected/snafubar
  [1]

  $ smrt detach snafubar
  error: No earmark file for snafubar
  [1]
