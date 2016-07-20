smrt store
==========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt store -h
  usage: smrt store -h|<CMD> <PATH>...
  Manipulate the testreport repository
    Options:
      -h                Display this message
  
    Operands:
      add               Put <PATH>s under version control
      remove            Remove <PATH>s from version control
      checkin           Persist <PATH>s in the repository
      checkout          Check out <PATH>s from the repository

  $ diff -u =(smrt store -h) =(smrt store --help)


unknown option::

  $ smrt store -x
  smrt store: Unknown option '-x'
  Run 'smrt store -h' for usage instructions
  [1]

  $ smrt store --xeno
  smrt store: Unknown option '--xeno'
  Run 'smrt store -h' for usage instructions
  [1]


missing arguments::

  $ smrt store
  smrt store: Missing argument
  Run 'smrt store -h' for usage instructions
  [1]

  $ smrt store add
  smrt store: Missing argument
  Run 'smrt store -h' for usage instructions
  [1]

  $ smrt store checkin
  smrt store: Missing argument
  Run 'smrt store -h' for usage instructions
  [1]

  $ smrt store checkout
  smrt store: Missing argument
  Run 'smrt store -h' for usage instructions
  [1]

  $ smrt store remove
  smrt store: Missing argument
  Run 'smrt store -h' for usage instructions
  [1]
