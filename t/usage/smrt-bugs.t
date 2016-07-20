smrt bugs
=========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt bugs -h
  usage: smrt bugs [-h|browse|urls|<BUG>...]
  List or browse bugs related to a maintenance request
    Options:
      -h                Display this message
    Operands:
      <BUG>             Open a bug in a browser
      browse            Open all bugs in a browser
      urls              List bug URLs, one per line
  
  This command should be run from inside a testreport directory

  $ diff -u =(smrt bugs -h) =(smrt bugs --help)


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
