smrt hosts
==========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt hosts -h
  usage: smrt hosts -h|--help
  usage: smrt hosts [<HOST>...]
  
  Display information on attached hosts
  
    Options:
      -h                Display this message
      --help            Display manual page
    Operands:
      <HOST>            Display information on <HOST>
  
  This command should be run from inside a testreport directory

  $ smrt hosts --help
  o exec man 1 smrt-hosts


unknown option::

  $ smrt hosts -x
  smrt hosts: Unknown option '-x'
  Run 'smrt hosts -h' for usage instructions
  [1]

  $ smrt hosts --xeno
  smrt hosts: Unknown option '--xeno'
  Run 'smrt hosts -h' for usage instructions
  [1]


outside a testreport::

  $ smrt hosts
  smrt hosts: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt hosts -h' for usage instructions
  [1]
