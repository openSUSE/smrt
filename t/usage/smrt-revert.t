smrt revert
===========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt revert -h
  usage: smrt revert -h|[HOST...]
  Downgrade relevant packages to latest released versions
    Options:
      -h                Display this message
    Operands:
      <HOST>            [<USER>@]<HOSTSPEC>
  
  This command should be run from inside a testreport directory

  $ smrt revert --help
  o exec man 1 smrt-revert


unknown option::

  $ smrt revert -x
  smrt revert: Unknown option '-x'
  Run 'smrt revert -h' for usage instructions
  [1]

  $ smrt revert --xeno
  smrt revert: Unknown option '--xeno'
  Run 'smrt revert -h' for usage instructions
  [1]


outside a testreport::

  $ smrt revert
  smrt revert: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt revert -h' for usage instructions
  [1]
