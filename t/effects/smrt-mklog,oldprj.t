smrt mklog: effects
===================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2396:114081
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log packages-list.txt


test::

  $ smrt mklog

  $ cat log
  SUMMARY: PASSED/FAILED
  
  comment: (none)
  
  $Author$
  
  Products: SLE-POS 11-SP3 (i386, x86_64), SLE-SERVER 11-SP3-TERADATA (x86_64), SLE-SERVER 11-SP4 (i386, ia64, ppc64, x86_64)
  Category: recommended
  Rating: low
  Packager: sneezy@suse.com
  Bugs: 967836
  ReviewRequestID: SUSE:Maintenance:2396:114081
  Repository: http://download.suse.de/ibs/SUSE:/Maintenance:/2396/
  Packages: xorg-x11-driver-input = 7.4-13.64.1
  SRCRPMs: xorg-x11-driver-input
  Suggested Test Plan Reviewers: clockwork@suse.com
  Testplatform: base=pos(major=11,minor=sp3);arch=[i386,x86_64]
  Testplatform: base=sles(major=11,minor=sp4);arch=[i386,x86_64]
  
  #############################
  Test results by product-arch:
  #############################
  
  
  ########################
  notes for/by the tester:
  ########################
  
  Bug #967836 ("Add an absolute Placement Mode for Touchscreens to the evdev..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=967836
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  regression tests:
  -----------------
  List of testcases in Testopia:
  
  https://bugzilla.suse.com/tr_list_cases.cgi?tags_type=anyexact&tags=packagename_xorg-x11-driver-input
  
  (put your details here)
  
  source code change review:
  --------------------------
  (put here the assessment of the spec + source changes when compared to the latest release)
  
  zypper update log:
  ------------------
  put here the output of the following commands:
  
  export LANG=
  zypper lr -puU
  zypper refresh
  zypper patches | grep :p=2396
  zypper patches | awk -F "|" '/:p=2396>/ { print $2; }' | while read p; do zypper -n install -l -y -t patch $p; done
  zypper patches | grep :p=2396
