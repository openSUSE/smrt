smrt terms gnome
================

setup::

  $ . $TESTROOT/setup

  $ smrt_chatty+=('nohup%*')
  $ smrt_dryrun+=('nohup%*')

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug
  $ mkdir .connected


no hosts attached, no hosts given::

  $ smrt terms gnome
  error: no hosts attached
  [1]


no hosts attached, some hosts given::

  $ smrt terms gnome
  error: no hosts attached
  [1]


outside a testreport::

  $ cd ..

  $ smrt terms gnome
  smrt terms: * is not a testreport (glob)
  This command should be run from inside a testreport directory
  Run 'smrt terms -h' for usage instructions
  [1]
