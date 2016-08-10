smrt xml sources, inside a workdir
==================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


test with an explicit, nonexistent argument::

  $ smrt xml sources nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml sources project.xml packages.xml
  smrt xml: Unknown argument 'packages.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path, with an explicit argument::

  $ smrt xml sources packages.xml
  SUSE_SLE-12_Update rsync 3.1.0 6.1

test the happy path, with no arguments::

  $ smrt xml sources
  SUSE_SLE-12_Update rsync 3.1.0 6.1
