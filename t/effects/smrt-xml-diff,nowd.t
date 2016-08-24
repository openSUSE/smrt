smrt xml diff, outside of a workdir
===================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2684:115702
  $ reify-fixture $slug


test with no arguments::

  $ smrt xml diff
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]

test with an explicit, nonexistent argument::

  $ smrt xml diff nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml diff $slug/request.diff.xml $slug/patchinfo.xml
  smrt xml: Unknown argument 'SUSE:Maintenance:2684:115702/patchinfo.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path, with an explicit pathname argument::

  $ smrt xml diff $slug/request.diff.xml > output
  $ head -5 output
  diff --bs glib2.1091/glib2.changes glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  --- glib2.1091/glib2.changes
  +++ glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  @@ -1,4 +1,10 @@
   -------------------------------------------------------------------

test the happy path, with "-" for stdin::

  $ smrt xml diff - < $slug/request.diff.xml > output
  $ head -5 output
  diff --bs glib2.1091/glib2.changes glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  --- glib2.1091/glib2.changes
  +++ glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  @@ -1,4 +1,10 @@
   -------------------------------------------------------------------
