smrt mklog: effects
===================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log


test::

  $ smrt mklog

  $ cat log
  SUMMARY: PASSED/FAILED
  
  comment: (none)
  
  $Author$
  
  Products: SLE-DESKTOP 12 (x86_64), SLE-DESKTOP 12-SP1 (x86_64), SLE-SERVER 12 (ppc64le, s390x, x86_64), SLE-SERVER 12-SP1 (ppc64le, s390x, x86_64)
  Category: security
  Rating: moderate
  Packager: farmer@example.com
  Bugs: 898513, 900914, 915410, 922710
  ReviewRequestID: SUSE:Maintenance:1302:87808
  Repository: http://download.suse.de/ibs/SUSE:/Maintenance:/1302/
  Packages: rsync = 3.1.0-6.1
  SRCRPMs: rsync
  Suggested Test Plan Reviewers: farmer, nurse, smooth
  Testplatform: base=sled(major=12,minor=);arch=[x86_64]
  Testplatform: base=sled(major=12,minor=sp1);arch=[x86_64]
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64]
  Testplatform: base=sles(major=12,minor=sp1);arch=[s390x,x86_64]
  
  #############################
  Test results by product-arch:
  #############################
  
  
  ########################
  notes for/by the tester:
  ########################
  
  Bug #898513 ("Rsync: slp support breaks rsync usage"):
  ------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=898513
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #900914 ("VUL-1: CVE-2014-8242: librsync, rsync: checksum collisions l..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=900914
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #915410 ("VUL-0: CVE-2014-9512: rsync: path spoofing attack vulnerabil..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=915410
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #922710 ("rsyncd keeps on spamming my log for trying to register SLP"):
  ---------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=922710
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  regression tests:
  -----------------
  List of testcases in Testopia:
  
  https://bugzilla.suse.com/tr_list_cases.cgi?tags_type=anyexact&tags=packagename_rsync
  
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
  zypper patches | grep :p=1302
  zypper patches | awk -F "|" '/:p=1302>/ { print $2; }' | while read p; do zypper -n install -l -y -t patch $p; done
  zypper patches | grep :p=1302


  $ cat packages-list.txt
  SUSE_Updates_SLE-DESKTOP_12-SP1_x86_64/x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-DESKTOP_12_x86_64/x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_ppc64le/ppc64le/rsync-3.1.0-6.1.ppc64le.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_s390x/s390x/rsync-3.1.0-6.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_12-SP1_x86_64/x86_64/rsync-3.1.0-6.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_12_ppc64le/ppc64le/rsync-3.1.0-6.1.ppc64le.rpm
  SUSE_Updates_SLE-SERVER_12_s390x/s390x/rsync-3.1.0-6.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_12_x86_64/x86_64/rsync-3.1.0-6.1.x86_64.rpm
