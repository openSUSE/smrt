smrt mklog: packages that require tests on all archs
====================================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2646:115651
  $ reify-fixture $slug
  $ cd $slug


test::

  $ smrt mklog

  $ sed -n '/^Testplatform: /p' log
  Testplatform: base=sled(major=12,minor=);arch=[x86_64]
  Testplatform: base=sles(major=12,minor=);arch=[ppc64le,s390x,x86_64]
  Testplatform: base=sles(major=12,minor=);arch=[ppc64le,s390x,x86_64];addon=sdk(major=12,minor=)
