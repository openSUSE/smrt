smrt xml sources, outside of a workdir
======================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug


test with no arguments::

  $ smrt xml sources
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml sources nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml sources $slug/project.xml $slug/packages.xml
  smrt xml: Unknown argument 'SUSE:Maintenance:1302:87808/packages.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path::

  $ smrt xml sources $slug/packages.xml
  SUSE_SLE-12_Update rsync 3.1.0 6.1
