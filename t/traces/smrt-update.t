smrt update
===========

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ fake ssh <<\EOF
  > exit 0
  > EOF

  $ smrt_chatty+=(
  >   '*%parallel%*'
  > )

  $ smrt_dryrun+=(
  >   '*%parallel%*'
  > )

inside a testreport::

  $ cd $slug
  $ smrt attach snafubar rofl lmao
  Connecting to snafubar for rofl lmao
  $ smrt update snafubar
  o log-output parallel --quote --plain --tag --joblog joblog --jobs=0 ssh -o ControlPath=*/%r@%h:%p '{1}' * ::: snafubar (glob)
