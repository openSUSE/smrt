smrt bugs
=========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt bugs -h
  usage: smrt bugs -h|--help
  usage: smrt bugs browse [BUG...]
  usage: smrt bugs [list] [BUG...]
  usage: smrt bugs urls [BUG...]
  
  List or browse bugs related to a maintenance request
  
    Options:
      -h                Display this message
      --help            Display manual page
    Operands:
      browse            Open bugs in a browser
      list              Display bug URLs and summaries
      urls              Display bug URLs, one per line
      BUG               Bugzilla ticket number
  
  This command should be run from inside a testreport directory

  $ smrt bugs --help
  o exec man 1 smrt-bugs


unknown option::

  $ smrt bugs -x
  smrt bugs: Unknown option '-x'
  Run 'smrt bugs -h' for usage instructions
  [1]

  $ smrt bugs --xeno
  smrt bugs: Unknown option '--xeno'
  Run 'smrt bugs -h' for usage instructions
  [1]


unknown argument::

  $ smrt bugs fubar
  smrt bugs: Unknown argument 'fubar'
  Run 'smrt bugs -h' for usage instructions
  [1]

outside a testreport::

  $ smrt bugs
  smrt bugs: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt bugs -h' for usage instructions
  [1]
