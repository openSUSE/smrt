smrt config: effects
====================

setup::

  $ . $TESTROOT/setup


no arguments::

  $ smrt config
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


no configuration file::

  $ rm -f ~/.smrtrc

  $ smrt config
  assumed_issuer =
  bugzilla_url =
  controlpath = */%r@%h:%p (glob)
  issuer_apiurls =
  l3db_creds =
  l3db_url =
  metadata_url =
  testopia_url =
  testopia_user =
  testopia_pass =
  testreport_repository =

  $ smrt config show
  assumed_issuer =
  bugzilla_url =
  controlpath = */%r@%h:%p (glob)
  issuer_apiurls =
  l3db_creds =
  l3db_url =
  metadata_url =
  testopia_url =
  testopia_user =
  testopia_pass =
  testreport_repository =
