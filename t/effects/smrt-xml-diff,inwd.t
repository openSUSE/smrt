smrt xml diff, inside a workdir
===============================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2684:115702
  $ reify-fixture $slug
  $ cd $slug


test with an explicit, nonexistent argument::

  $ smrt xml diff nonexistent
  smrt xml: Unknown argument 'nonexistent'
  Run 'smrt xml -h' for usage instructions
  [1]

test with multiple arguments::

  $ smrt xml diff request.diff.xml patchinfo.xml
  smrt xml: Unknown argument 'patchinfo.xml'
  Run 'smrt xml -h' for usage instructions
  [1]

test the happy path, with no arguments::

  $ smrt xml diff > output
  $ head -5 output
  diff --bs glib2.1091/glib2.changes glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  --- glib2.1091/glib2.changes
  +++ glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  @@ -1,4 +1,10 @@
   -------------------------------------------------------------------

test the happy path, with an explicit pathname argument::

  $ mv request.diff.xml other

  $ smrt xml diff other > output
  $ head -5 output
  diff --bs glib2.1091/glib2.changes glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  --- glib2.1091/glib2.changes
  +++ glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  @@ -1,4 +1,10 @@
   -------------------------------------------------------------------

test the happy path, with "-" for stdin::

  $ smrt xml diff - < other > output
  $ head -5 output
  diff --bs glib2.1091/glib2.changes glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  --- glib2.1091/glib2.changes
  +++ glib2.SUSE_SLE-11-SP1_Update/glib2.changes
  @@ -1,4 +1,10 @@
   -------------------------------------------------------------------
