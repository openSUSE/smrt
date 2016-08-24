smrt update
===========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt update -h
  usage: smrt update -h|--help
  usage: smrt update [HOST...]
  
  Install current maintenance update
  
    Options:
      -h                Display this message
      --help            Display manual page
    Operands:
      <HOST>            [<USER>@]<HOSTSPEC>
  
  This command should be run from inside a testreport directory

  $ smrt update --help
  o exec man 1 smrt-update


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
