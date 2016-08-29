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

  $ mkdir .connected
  $ print > .connected/foo -l bar baz
  $ print > .connected/rofl -l omg wtf
  $ print > .connected/snafu -l rofl lmao

  $ smrt detach snafubar
  error: snafubar is not attached
  [1]

  $ test -e .connected/snafu

  $ smrt detach snafu
  Detaching snafu

  $ ls .connected/
  foo
  rofl

  $ smrt detach foo rofl
  Detaching foo
  Detaching rofl
