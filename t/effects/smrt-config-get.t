smrt config get: effects
========================

setup::

  $ . $TESTROOT/setup


default::

  $ echo assumed_issuer = "assu issu" > $HOME/.smrtrc
  $ smrt config get assumed_issuer
  assu issu


SMRT_CONFIG::

  $ echo assumed_issuer = omg > mycfg
  $ SMRT_CONFIG=mycfg smrt config get assumed_issuer
  omg
