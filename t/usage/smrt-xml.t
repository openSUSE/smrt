smrt xml
========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt xml -h
  usage: smrt xml -h|bugs|email|maintainers|release|repos
  Display information gleaned from BuildService XML data
    Options:
      -h                Display this message
  
    Operands:
      bugs              List referenced bugs
      diff              Display unified diff
      email             Display email address of a maintainer
      maintainers       List maintainer usernames
      release           List released packages
      repos             List targeted repositories


no subcommand::

  $ smrt xml
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]
