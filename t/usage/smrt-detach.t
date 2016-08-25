smrt detach
===========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt detach -h
  usage: smrt detach -h|--help
  usage: smrt detach [HOST...]
  
  Disconnect attached refhost(s)
  
    Options:
      -h                Display this message
      --help            Display manual page
    Operands:
      HOST              [USER@]HOSTSPEC
  
  This command should be run from inside a testreport directory

  $ smrt detach --help
  o exec man 1 smrt-detach


unknown option::

  $ smrt detach -x
  smrt detach: Unknown option '-x'
  Run 'smrt detach -h' for usage instructions
  [1]

  $ smrt detach --xeno
  smrt detach: Unknown option '--xeno'
  Run 'smrt detach -h' for usage instructions
  [1]


missing argument::

  $ smrt detach
  smrt detach: Missing argument
  Run 'smrt detach -h' for usage instructions
  [1]


outside a testreport::

  $ smrt detach snafubar
  smrt detach: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt detach -h' for usage instructions
  [1]
