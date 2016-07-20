smrt mklog: handling of kernel updates
======================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2539:114446
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log packages-list.txt


test::

  $ smrt mklog

  $ grep SRCRPMs: log
  SRCRPMs: kernel-default, kernel-ec2, kernel-pae, kernel-source, kernel-syms, kernel-trace, kernel-xen

  $ head -35 log
  SUMMARY: PASSED/FAILED
  
  comment: (none)
  
  $Author$
  
  Products: SLE-DEBUGINFO 11-SP2 (i386, s390x, x86_64), SLE-SERVER 11-SP2-LTSS (i386, s390x, x86_64)
  Category: security
  Rating: important
  Packager: editor@suse.com
  Bugs: 816446, 861093, 928130, 935757, 939826, 942367, 945825, 946117, 946309, 948562, 949744, 949936, 951440, 952384, 953527, 954404, 955354, 955654, 956708, 956709, 958463, 958886, 958951, 959190, 959399, 961500, 961509, 961512, 963765, 963767, 964201, 966437, 966460, 966662, 966693, 967972, 967973, 967974, 967975, 968010, 968011, 968012, 968013, 968670, 970504, 970892, 970909, 970911, 970948, 970956, 970958, 970970, 971124, 971125, 971126, 971360, 972510, 973570, 975945, 977847, 978822
  ReviewRequestID: SUSE:Maintenance:2539:114446
  Repository: http://download.suse.de/ibs/SUSE:/Maintenance:/2539/
  Packages: kernel-default = 3.0.101-0.7.40.1, kernel-default-base = 3.0.101-0.7.40.1, kernel-default-devel = 3.0.101-0.7.40.1, kernel-default-man = 3.0.101-0.7.40.1, kernel-ec2 = 3.0.101-0.7.40.1, kernel-ec2-base = 3.0.101-0.7.40.1, kernel-ec2-devel = 3.0.101-0.7.40.1, kernel-pae = 3.0.101-0.7.40.1, kernel-pae-base = 3.0.101-0.7.40.1, kernel-pae-devel = 3.0.101-0.7.40.1, kernel-source = 3.0.101-0.7.40.1, kernel-syms = 3.0.101-0.7.40.1, kernel-trace = 3.0.101-0.7.40.1, kernel-trace-base = 3.0.101-0.7.40.1, kernel-trace-devel = 3.0.101-0.7.40.1, kernel-xen = 3.0.101-0.7.40.1, kernel-xen-base = 3.0.101-0.7.40.1, kernel-xen-devel = 3.0.101-0.7.40.1
  SRCRPMs: kernel-default, kernel-ec2, kernel-pae, kernel-source, kernel-syms, kernel-trace, kernel-xen
  Suggested Test Plan Reviewers: doctor
  Testplatform: base=sles(major=11,minor=sp2);arch=[i386,s390x,x86_64];tags=(kernel)
  
  #############################
  Test results by product-arch:
  #############################
  
  
  ########################
  notes for/by the tester:
  ########################
  
  results from kABI checks:
  -------------------------
  
  ...
  
  zypper update log:
  ------------------
  put here the output of the following commands:

  $ cat packages-list.txt
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-default-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-default-base-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-default-devel-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-ec2-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-ec2-base-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-ec2-devel-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-pae-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-pae-base-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-pae-devel-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-source-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-syms-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-trace-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-trace-base-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-trace-devel-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-xen-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-xen-base-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_i586/rpm/i586/kernel-xen-devel-3.0.101-0.7.40.1.i586.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-default-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-default-base-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-default-devel-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-default-man-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-source-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-syms-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-trace-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-trace-base-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_s390x/rpm/s390x/kernel-trace-devel-3.0.101-0.7.40.1.s390x.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-default-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-default-base-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-default-devel-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-ec2-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-ec2-base-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-ec2-devel-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-source-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-syms-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-trace-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-trace-base-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-trace-devel-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-xen-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-xen-base-3.0.101-0.7.40.1.x86_64.rpm
  SUSE_Updates_SLE-SERVER_11-SP2-LTSS_x86_64/rpm/x86_64/kernel-xen-devel-3.0.101-0.7.40.1.x86_64.rpm
