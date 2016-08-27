smrt detach: effects
====================

setup::

  $ . $TESTROOT/setup


test happy path::

  $ fake ssh <<\EOF
  > echo spam from ssh
  > exit 0
  > EOF

  $ print -lnr .connected/*(N)

  $ smrt detach snafubar
  smrt detach: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt detach -h' for usage instructions
  [1]
