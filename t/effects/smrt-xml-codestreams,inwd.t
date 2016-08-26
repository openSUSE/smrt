smrt xml codestreams, inside a workdir
======================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


test with an explicit, nonexistent argument::

  $ smrt xml codestreams nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml codestreams project.xml packages.xml
  smrt xml: Unknown argument 'packages.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path, with no arguments::

  $ smrt xml codestreams
  SUSE_SLE-12_Update SUSE:SLE-12:Update

test the happy path, with an explicit pathname argument::

  $ mv project.xml other

  $ smrt xml codestreams other
  SUSE_SLE-12_Update SUSE:SLE-12:Update

test the happy path, with "-" for stdin::

  $ smrt xml codestreams - < other
  SUSE_SLE-12_Update SUSE:SLE-12:Update
