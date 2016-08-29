smrt config show: effects
=========================

setup::

  $ . $TESTROOT/setup

  $ smrt_chatty+=('do-show%*')
  $ smrt_dryrun+=('do-show%*')


behaviors::

  $ smrt config --system show
  o do-show */smrt (glob)

  $ smrt config show
  o do-show */.smrtrc (glob)

  $ SMRT_CONFIG=$PWD/omg.fubar smrt config show
  o do-show */omg.fubar (glob)


outputs::

  $ unset "smrt_chatty[(re)do-show%*]"
  $ unset "smrt_dryrun[(re)do-show%*]"

  $ smrt config show
  assumed_issuer = wtf
  bugzilla_url = https://bugzilla.suse.com
  controlpath = */%r@%h:%p (glob)
  issuer_apiurls = SUSE:https://api.example.com openSUSE:https://api.example.org
  l3db_creds = smrt:mtui
  l3db_url = http://l3db.example.org/api/1/raederwerk/?incident__bug_id__in=
  metadata_url = file:///*/t/fixtures (glob)
  testopia_url = https://apibugzilla.suse.com
  testopia_user = testopus
  testopia_pass = testopas
  testreport_repository = file://*/.svnrepo (glob)
