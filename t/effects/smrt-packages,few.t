smrt packages: short(est possible) listing
==========================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1753:87412
  $ commit-fixture $slug

  $ smrt checkout $slug
  Checking out SUSE:Maintenance:1753:87412

  $ cd $slug


test::

  $ smrt packages
  clamsap                          0.98.9-0.7.1    ppc64   SLE-SAP-AIO:11-SP4
  clamsap                          0.98.9-0.7.1    x86_64  SLE-SAP-AIO:11-SP4
