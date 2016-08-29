smrt config set: effects
========================

setup::

  $ . $TESTROOT/setup


default::

  $ smrt config get assumed_issuer
  wtf

  $ smrt config set assumed_issuer fubar

  $ smrt config get assumed_issuer
  fubar


SMRT_CONFIG::

  $ SMRT_CONFIG=mycfg smrt config set assumed_issuer snafu

  $ SMRT_CONFIG=mycfg smrt config get assumed_issuer
  snafu
