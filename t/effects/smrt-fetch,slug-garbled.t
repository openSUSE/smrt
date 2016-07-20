smrt fetch: effects
===================

setup::

  $ . $TESTROOT/setup


test::

  $ slug=SUSE:Maintenance:1302:12345
  $ smrt fetch $slug
  curl: (22) The requested URL returned error: 404 Not Found
  error: failed bsc /request/12345
  [22]

  $ [[ -e $slug ]]
  [1]

  $ slug=SUSE:Maintenance:1302:114433
  $ smrt fetch $slug
  error: SUSE:Maintenance:1302:114433 does not exist
  [1]

  $ [[ -e $slug ]]
  [1]
