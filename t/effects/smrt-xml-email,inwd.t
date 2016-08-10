smrt xml email, inside a workdir
================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2539:114446
  $ reify-fixture $slug
  $ cd $slug

test with no arguments::

  $ smrt xml email
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml email nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml email person-*.xml
  smrt xml: Unknown argument 'person-editor.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path::

  $ smrt xml email person-editor.xml
  editor@example.com
