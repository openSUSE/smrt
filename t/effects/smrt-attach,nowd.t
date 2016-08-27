smrt attach: effects
====================

setup::

  $ . $TESTROOT/setup


test happy path::

  $ fake ssh <<\EOF
  > echo spam from ssh
  > exit 0
  > EOF

  $ smrt attach snafubar -- rofl lmao
  smrt attach: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt attach -h' for usage instructions
  [1]

  $ print -lnr .connected/*(N)
