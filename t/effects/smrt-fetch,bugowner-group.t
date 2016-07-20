smrt fetch: effects
===================

setup::

  $ . $TESTROOT/setup


test::

  $ slug=SUSE:Maintenance:1091:114433
  $ smrt fetch $slug
  Downloading SUSE:Maintenance:1091:114433 metadata

  $ diff -u $FIXTURES/$slug/maintainers $slug/maintainers
