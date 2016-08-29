smrt config
===========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt config -h
  usage: smrt config -h|--help
  usage: smrt config [--system] edit
  usage: smrt config [--system] get KEY
  usage: smrt config [--system] set KEY VAL
  usage: smrt config [--system] show
  
  Manipulate smrt configuration file
  
    Options:
      -h                Display this message
      --help            Display manual page
      --system          Manipulate system-wide configuration
    Operands:
      KEY               Configuration key
      VAL               Configuration value

  $ smrt config --help
  o exec man 1 smrt-config


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
