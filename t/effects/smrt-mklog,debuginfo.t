smrt mklog: handling of debuginfo, debugsource packages
=======================================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2513:114714
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log packages-list.txt


test::

  $ smrt mklog

  $ sed -n '/^Packages: /{p;q;}' log
  Packages: quagga = 0.99.15-0.24.2, quagga-devel = 0.99.15-0.24.2

  $ sed -n '/tr_list_cases.cgi/{p;q;}' log
  https://bugzilla.suse.com/tr_list_cases.cgi?tags_type=anyexact&tags=packagename_quagga,packagename_quagga-devel

  $ grep -Eie '-debug(info|source)' packages-list.txt
  [1]
