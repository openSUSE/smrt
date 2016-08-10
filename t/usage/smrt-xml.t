smrt xml
========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt xml -h
  usage: smrt xml -h|binaries|bugs|channels|codestreams|email|maintainers|sources
  Display information gleaned from BuildService XML data
    Options:
      -h                Display this message
  
    Operands:
      binaries          List released packages
      bugs              List referenced bugs
      channels          List update channels
      codestreams       List codestreams
      diff              Display unified diff
      email             Display email address of a maintainer
      maintainers       List maintainer usernames
      sources           List released packages


no subcommand::

  $ smrt xml
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]
