smrt config: effects
====================

setup::

  $ . $TESTROOT/setup


no arguments::

  $ smrt config
  assumed_issuer = wtf
  bugzilla_url = https://bugzilla.suse.com
  issuer_apiurls = SUSE:https://api.example.com openSUSE:https://api.example.org
  l3db_url = http://l3db.example.org/api/1/raederwerk/?incident__bug_id__in=
  metadata_url = file:///*/t/fixtures (glob)
  testreport_repository = file:///*/.svnrepo (glob)


same with show::

  $ smrt config show
  assumed_issuer = wtf
  bugzilla_url = https://bugzilla.suse.com
  issuer_apiurls = SUSE:https://api.example.com openSUSE:https://api.example.org
  l3db_url = http://l3db.example.org/api/1/raederwerk/?incident__bug_id__in=
  metadata_url = file:///*/t/fixtures (glob)
  testreport_repository = file:///*/.svnrepo (glob)


edit::

  $ smrt_chatty+=('snafubar%*' 'roflmao%*' 'vi*')
  $ smrt_dryrun+=('snafubar%*' 'roflmao%*' 'vi*')

  $ export EDITOR=roflmao
  $ export VISUAL=snafubar
  $ smrt config edit
  o snafubar */.smrtrc (glob)

  $ unset VISUAL
  $ smrt config edit
  o roflmao */.smrtrc (glob)

  $ unset EDITOR
  $ smrt config edit
  o vi */.smrtrc (glob)


no configuration file::

  $ rm -f ~/.smrtrc

  $ smrt config
  assumed_issuer =
  bugzilla_url =
  issuer_apiurls =
  l3db_url =
  metadata_url =
  testreport_repository =

  $ smrt config show
  assumed_issuer =
  bugzilla_url =
  issuer_apiurls =
  l3db_url =
  metadata_url =
  testreport_repository =
