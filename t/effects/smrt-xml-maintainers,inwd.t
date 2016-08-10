smrt xml maintainers, inside a workdir
======================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2684:115702
  $ reify-fixture $slug
  $ cd $slug


test with no arguments::

  $ smrt xml maintainers
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml maintainers nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml maintainers owners-*.xml
  smrt xml: Unknown argument 'owners-pango.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path::

  $ smrt xml maintainers owners-glib2.xml
  group gnome-maintainers

  $ smrt xml maintainers owners-pango.xml
  group gnome-maintainers
