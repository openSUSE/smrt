smrt revert
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
  $ smrt revert snafubar
  o parallel -q --plain --files --tag --joblog joblog --jobs=0 --tmpdir=* ssh -qo ControlPath=*/.ssh/%r@%h:%p '{1}' 'pkgs=$(rpm -q --qf '\''%{NAME}\n'\'' rsync | sed '\''/is not installed/d'\''); if test x = "x$pkgs"; then echo nothing to do; else echo zypper -n in --oldpackage --force-resolution -y -l $pkgs; fi' ::: snafubar (glob)
