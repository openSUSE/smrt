smrt packages
=============

setup::

  $ . $TESTROOT/setup


help::

  $ smrt packages -h
  usage: smrt packages -h|--help
  usage: smrt packages [--full] [PKG...]
  
  Display version information for packages under test
  
    Options:
      -h                Display this message
      --help            Display manual page
      --full            Display also architectures, project names
    Operands:
      PKG               Display information on PKG
  
  This command should be run from inside a testreport directory

  $ smrt packages --help
  o exec man 1 smrt-packages

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
