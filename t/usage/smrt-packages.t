smrt packages
=============

setup::

  $ . $TESTROOT/setup


help::

  $ smrt packages -h
  usage: smrt packages [-h|<HOST>...]
  Display version information for packages under test
    Options:
      -h                Display this message
    Operands:
      <HOST>            Display version information for packages under test
                        as currently installed (or not) on <HOST>
  
  This command should be run from inside a testreport directory

  $ diff -u =(smrt packages -h) =(smrt packages --help)

unknown option::

  $ smrt packages -x
  smrt packages: Unknown option '-x'
  Run 'smrt packages -h' for usage instructions
  [1]

  $ smrt packages --xeno
  smrt packages: Unknown option '--xeno'
  Run 'smrt packages -h' for usage instructions
  [1]


outside a testreport::

  $ smrt packages
  smrt packages: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt packages -h' for usage instructions
  [1]
