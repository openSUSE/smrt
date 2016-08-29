smrt checkout
=============

setup::

  $ . $TESTROOT/setup


help::

  $ smrt checkout -h
  usage: smrt checkout -h|--help
  usage: smrt checkout SLUG [DEST]
  
  Download metadata for a maintenance request
  
    Options:
      -h                Display this message
      --help            Display manual page
    Operands:
      SLUG              Checkout a maintenance update SLUG
      DEST              Destination directory, defaults to SLUG

  $ smrt checkout --help
  o exec man 1 smrt-checkout


unknown option::

  $ smrt checkout -x
  smrt checkout: Unknown option '-x'
  Run 'smrt checkout -h' for usage instructions
  [1]

  $ smrt checkout --xeno
  smrt checkout: Unknown option '--xeno'
  Run 'smrt checkout -h' for usage instructions
  [1]


no arguments::

  $ smrt checkout
  smrt checkout: Missing argument
  Run 'smrt checkout -h' for usage instructions
  [1]


no configuration file::

  $ smrt checkout SUSE:Maintenance:1234:5678
  smrt-checkout: missing or bungled configuration
  the 'testreport_repository' directive is missing from your configuration files
  [1]
