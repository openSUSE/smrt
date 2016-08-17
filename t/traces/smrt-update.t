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
  >   'parallel%*'
  > )

  $ smrt_dryrun+=(
  >   'parallel%*'
  > )

inside a testreport::

  $ cd $slug
  $ smrt attach snafubar rofl lmao
  Connecting to snafubar for rofl lmao
  $ smrt update snafubar
  o parallel -q --plain --files --tag --joblog joblog --jobs=0 --tmpdir=* ssh -qo ControlPath=*/.ssh/%r@%h:%p '{1}' 'zypper patches | awk -F '\''|'\'' '\''/:p=87808\>/ { print $2; }'\'' | while read p; do echo zypper -n install -l -y -t patch $p; done' ::: snafubar (glob)
