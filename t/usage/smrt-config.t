smrt config
===========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt config -h
  usage: smrt config -h|edit|get <KEY>|set <KEY> <VAL>
  Manipulate smrt configuration file
    Options:
      -h                Display this message
    Operands:
      <KEY>             Configuration key
      <VAL>             Configuration value

  $ diff -u =(smrt config -h) =(smrt config --help)


unknown option::

  $ smrt config -x
  smrt config: Unknown option '-x'
  Run 'smrt config -h' for usage instructions
  [1]

  $ smrt config --xeno
  smrt config: Unknown option '--xeno'
  Run 'smrt config -h' for usage instructions
  [1]


unknown argument::

  $ smrt config fubar
  smrt config: Unknown argument 'fubar'
  Run 'smrt config -h' for usage instructions
  [1]
