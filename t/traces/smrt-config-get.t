smrt config get: traces
=======================

setup::

  $ . $TESTROOT/setup

  $ smrt_chatty+=('do-get%*')
  $ smrt_dryrun+=('do-get%*')


--system::

  $ smrt config --system get assumed_issuer
  o do-get */smrt assumed_issuer (glob)


default::

  $ smrt config get assumed_issuer
  o do-get */.smrtrc assumed_issuer (glob)


SMRT_CONFIG::

  $ echo assumed_issuer = omg > mycfg
  $ SMRT_CONFIG=mycfg smrt config get assumed_issuer
  o do-get mycfg assumed_issuer (glob)
