smrt mklog
=======

setup::

  $ . $TESTROOT/setup


help::

  $ smrt mklog -h
  usage: smrt mklog [-h]
  Create MTUI-compatible testreport
    Options:
      -h                Display this message
  
  This command should be run from inside a testreport directory

  $ diff -u =(smrt mklog -h) =(smrt mklog --help)


unknown option::

  $ smrt mklog -x
  smrt mklog: Unknown option '-x'
  Run 'smrt mklog -h' for usage instructions
  [1]

  $ smrt mklog --xeno
  smrt mklog: Unknown option '--xeno'
  Run 'smrt mklog -h' for usage instructions
  [1]


arguments::

  $ smrt mklog 12345
  smrt mklog: Unknown argument '12345'
  Run 'smrt mklog -h' for usage instructions
  [1]
