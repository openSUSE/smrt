smrt fetch: effects
===================

setup::

  $ . $TESTROOT/setup


test::

  $ mrid=11111
  $ smrt -I SUSE fetch $mrid
  curl: (22) The requested URL returned error: 404 Not Found
  error: failed bsc /request/11111
  [22]

  $ ls
