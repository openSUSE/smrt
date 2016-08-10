smrt xml codestreams, outside of a workdir
==========================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug


test with no arguments::

  $ smrt xml codestreams
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml codestreams nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml codestreams $slug/packages.xml $slug/project.xml
  smrt xml: Unknown argument 'SUSE:Maintenance:1302:87808/project.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path::

  $ smrt xml codestreams $slug/project.xml
  SUSE_SLE-12_Update SUSE:SLE-12:Update
