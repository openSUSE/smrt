smrt terms
==========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt terms -h
  usage: smrt terms -h|--help
  usage: smrt terms gnome [HOST...]
  usage: smrt terms kde [HOST...]
  usage: smrt terms xterm [HOST...]
  
  Open terminals for attached hosts
  
    Options:
      -h                Display this message
      --help            Display manual page
    Operands:
      gnome             Use gnome-terminal
      kde               Use konsole
      xterm             Use xterm
      HOST              Open terminal for HOST
  
  This command should be run from inside a testreport directory

  $ smrt terms --help
  o exec man 1 smrt-terms


unknown option::

  $ smrt terms -x
  smrt terms: Unknown option '-x'
  Run 'smrt terms -h' for usage instructions
  [1]

  $ smrt terms --xeno
  smrt terms: Unknown option '--xeno'
  Run 'smrt terms -h' for usage instructions
  [1]


missing arguments::

  $ smrt terms
  smrt terms: Missing argument
  Run 'smrt terms -h' for usage instructions
  [1]


unknown argument::

  $ smrt terms fubar
  smrt terms: Unknown argument 'fubar'
  Run 'smrt terms -h' for usage instructions
  [1]
