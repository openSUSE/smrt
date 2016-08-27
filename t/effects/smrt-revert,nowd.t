smrt revert
===========

setup::

  $ . $TESTROOT/setup

  $ fake ssh <<\EOF
  > echo >&2 OMG
  > exit 33
  > EOF


no hosts given, no hosts attached::

  $ smrt revert
  smrt revert: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt revert -h' for usage instructions
  [1]


not an attached host::

  $ smrt revert snafubar
  smrt revert: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt revert -h' for usage instructions
  [1]


mixed hosts::

  $ mkdir .connected
  $ print -l > .connected/foo bar baz
  $ print -l > .connected/omg wtf

  $ smrt revert foo snafubar omg
  smrt revert: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt revert -h' for usage instructions
  [1]
