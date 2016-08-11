smrt bs maintainers <pkg>
=========================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ fixd=$FIXTURES/$slug

test the happy path::

  $ smrt -I SUSE bs maintainers rsync > xml
  $ diff -u $fixd/owners-rsync.xml xml
