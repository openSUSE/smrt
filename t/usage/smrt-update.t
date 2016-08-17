smrt update
===========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt update -h
  usage: smrt update -h|[HOST...]
  Install current maintenance update
    Options:
      -h                Display this message
    Operands:
      <HOST>            [<USER>@]<HOSTSPEC>
  
  This command should be run from inside a testreport directory

  $ diff -u =(smrt update -h) =(smrt update --help)


unknown option::

  $ smrt update -x
  smrt update: Unknown option '-x'
  Run 'smrt update -h' for usage instructions
  [1]

  $ smrt update --xeno
  smrt update: Unknown option '--xeno'
  Run 'smrt update -h' for usage instructions
  [1]


outside a testreport::

  $ smrt update
  smrt update: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt update -h' for usage instructions
  [1]
