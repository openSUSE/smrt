smrt push
=========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt push -h
  usage: smrt push -h|--help
  usage: smrt push
  
  Publish metadata for a maintenance request
  
    Options:
      -h                Display this message
      --help            Display manual page
  
  This command should be run from inside a testreport directory

  $ smrt push --help
  o exec man 1 smrt-push


unknown option::

  $ smrt push -x
  smrt push: Unknown option '-x'
  Run 'smrt push -h' for usage instructions
  [1]

  $ smrt push --xeno
  smrt push: Unknown option '--xeno'
  Run 'smrt push -h' for usage instructions
  [1]


outside a testreport::

  $ smrt push
  smrt push: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt push -h' for usage instructions
  [1]


extra arguments::

  $ smrt push foo bar
  smrt push: Unknown argument 'foo'
  Run 'smrt push -h' for usage instructions
  [1]


no configuration file::

  $ slug=SUSE:Maintenance:1234:56789
  $ mkdir $slug
  $ cd $slug
  $ print $slug > slug

  $ smrt push
  smrt-push: missing or bungled configuration
  the 'testreport_repository' directive is missing from your ~/.smrtrc
  [1]
