smrt run: effects
=================

setup::

  $ . $TESTROOT/setup


test::

  $ fake ssh <<\EOF
  > echo spam from ssh
  > exit 0
  > EOF

  $ smrt run snafubar -- echo rofl lmao
  smrt run: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt run -h' for usage instructions
  [1]

  $ print -lnr .connected/*(N)
