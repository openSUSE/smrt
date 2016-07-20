smrt mklog: Products header should carry a sorted list
======================================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2455:113589
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log


test::

  $ smrt mklog

  $ sed -n '/^Products: /{p;q;}' log
  Products: SLE-DEBUGINFO 11-SP3 (i386, s390x, x86_64), SLE-DEBUGINFO 11-SP3-TERADATA (x86_64), SLE-DEBUGINFO 11-SP4 (i386, ia64, ppc64, s390x, x86_64), SLE-SDK 11-SP4 (i386, ia64, ppc64, s390x, x86_64), SLE-SERVER 11-SECURITY (i386, ia64, ppc64, s390x, x86_64), SLE-SERVER 11-SP1-TERADATA (x86_64), SLE-SERVER 11-SP3-LTSS (i386, s390x, x86_64), SLE-SERVER 11-SP3-TERADATA (x86_64), SLE-SERVER 11-SP4 (i386, ia64, ppc64, s390x, x86_64), SUSE-CLOUD 5 (x86_64), SUSE-MANAGER 2.1 (s390x, x86_64), SUSE-MANAGER-PROXY 2.1 (x86_64)
