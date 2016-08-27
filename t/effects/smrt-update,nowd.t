smrt update
===========

setup::

  $ . $TESTROOT/setup

  $ fake ssh <<\EOF
  > echo >&2 OMG
  > exit 33
  > EOF


no hosts given, no hosts attached::

  $ smrt update
  smrt update: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt update -h' for usage instructions
  [1]


not an attached host::

  $ smrt update snafubar
  smrt update: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt update -h' for usage instructions
  [1]


mixed hosts::

  $ mkdir .connected
  $ print -l > .connected/foo bar baz
  $ print -l > .connected/omg wtf

  $ smrt update foo snafubar omg
  smrt update: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt update -h' for usage instructions
  [1]
