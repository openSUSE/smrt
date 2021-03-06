smrt tcf submit
===============

setup::

  $ . $TESTROOT/setup

  $ smrt_dryrun+=('run-in-hosts%*')

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug

no hosts given, no hosts attached::

  $ smrt tcf submit -- bar
  error: no hosts attached
  [1]

some hosts given, no hosts attached::

  $ smrt tcf submit foo -- bar
  smrt tcf: Unknown argument 'foo'
  Run 'smrt tcf -h' for usage instructions
  [1]
