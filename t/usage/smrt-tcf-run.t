smrt tcf run
============

setup::

  $ . $TESTROOT/setup


outside a testreport::

  $ smrt tcf run foo -- bar
  smrt tcf: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt tcf -h' for usage instructions
  [1]
