smrt tcf list
=============

setup::

  $ . $TESTROOT/setup

  $ smrt_dryrun+=('run-in-hosts%*')
  $ smrt_chatty+=('*~*load-config%*')

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug

no hosts given, no hosts attached::

  $ smrt tcf list
  O find-cmd tcf
  o run-cmd /*/smrt-tcf list (glob)
  o assert-workdir smrt-tcf
  o do-list
  error: no hosts attached
  [1]

some hosts given, no hosts attached::

  $ smrt tcf list foo
  O find-cmd tcf
  o run-cmd /*/smrt-tcf list foo (glob)
  o assert-workdir smrt-tcf
  o do-list foo
  smrt tcf: Unknown argument 'foo'
  Run 'smrt tcf -h' for usage instructions
  [1]
