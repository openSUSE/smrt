smrt push: effects
==================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug


happy path::

  $ smrt push
  Publishing results into
    *://*/SUSE:Maintenance:1302:87808 (glob)
    *://*/SUSE:Maintenance:1302:87808 (glob)


svn hates '@' characters, but we have our ways::

  $ touch @ foo@bar

  $ smrt push
  Publishing results into
    *://*/SUSE:Maintenance:1302:87808 (glob)
    *://*/SUSE:Maintenance:1302:87808 (glob)


nothing to commit again::

  $ smrt push
  error: nothing to publish
  [1]
