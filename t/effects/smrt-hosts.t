smrt hosts: effects
===================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ fake ssh <<\EOF
  > exit 0
  > EOF


test::

  $ cd $slug

  $ smrt attach rofl omg wtf
  Connecting to rofl for omg wtf

  $ smrt attach snafu rofl lmao
  Connecting to snafu for rofl lmao

  $ smrt hosts
  rofl                         omg wtf
  snafu                        rofl lmao
