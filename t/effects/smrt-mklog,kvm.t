smrt mklog: effects
===================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1263:87536
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log


test::

  $ smrt mklog

  $ cat log
  SUMMARY: PASSED/FAILED
  
  comment: (none)
  
  $Author$
  
  Products: SLE-DESKTOP 12 (x86_64), SLE-SAP 12 (x86_64), SLE-SDK 12 (ppc64le, s390x, x86_64), SLE-SERVER 12 (ppc64le, s390x, x86_64), SLE-WE 12 (x86_64)
  Category: security
  Rating: moderate
  Packager: grandpa
  Bugs: 899334, 903757, 904432, 911737, 914297, 914693, 921355, 921555, 921586, 936524, 938228, 948516, 948686, 953110
  ReviewRequestID: SUSE:Maintenance:1263:87536
  Repository: http://download.suse.de/ibs/SUSE:/Maintenance:/1263/
  Packages: libvirt = 1.2.5-27.10.1, libvirt-client = 1.2.5-27.10.1, libvirt-client-32bit = 1.2.5-27.10.1, libvirt-daemon = 1.2.5-27.10.1, libvirt-daemon-config-network = 1.2.5-27.10.1, libvirt-daemon-config-nwfilter = 1.2.5-27.10.1, libvirt-daemon-driver-interface = 1.2.5-27.10.1, libvirt-daemon-driver-libxl = 1.2.5-27.10.1, libvirt-daemon-driver-lxc = 1.2.5-27.10.1, libvirt-daemon-driver-network = 1.2.5-27.10.1, libvirt-daemon-driver-nodedev = 1.2.5-27.10.1, libvirt-daemon-driver-nwfilter = 1.2.5-27.10.1, libvirt-daemon-driver-qemu = 1.2.5-27.10.1, libvirt-daemon-driver-secret = 1.2.5-27.10.1, libvirt-daemon-driver-storage = 1.2.5-27.10.1, libvirt-daemon-lxc = 1.2.5-27.10.1, libvirt-daemon-qemu = 1.2.5-27.10.1, libvirt-daemon-xen = 1.2.5-27.10.1, libvirt-devel = 1.2.5-27.10.1, libvirt-doc = 1.2.5-27.10.1, libvirt-lock-sanlock = 1.2.5-27.10.1
  SRCRPMs: libvirt
  Suggested Test Plan Reviewers: grandpa
  Testplatform: base=sap-aio(major=12,minor=);arch=[x86_64];virtual=(hypervisor=xen)
  Testplatform: base=sled(major=12,minor=);arch=[x86_64];virtual=(hypervisor=xen)
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64];addon=sdk(major=12,minor=);tags=(kernel);virtual=(mode=host,hypervisor=xen)
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64];addon=sdk(major=12,minor=);virtual=(mode=guest,hypervisor=xen)
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64];tags=(kernel);virtual=(mode=host,hypervisor=xen)
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64];virtual=(mode=guest,hypervisor=xen)
  Testplatform: base=sles(major=12,minor=);arch=[x86_64];addon=we(major=12,minor=);tags=(kernel);virtual=(mode=host,hypervisor=xen)
  Testplatform: base=sles(major=12,minor=);arch=[x86_64];addon=we(major=12,minor=);virtual=(mode=guest,hypervisor=xen)
  
  #############################
  Test results by product-arch:
  #############################
  
  
  ########################
  notes for/by the tester:
  ########################
  
  Bug #899334 ("libvirt claiming Machine already exists"):
  --------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=899334
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #903757 ("Under Xen, virsh dominfo [DOMAIN] reports virNodeGetSecurity..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=903757
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #904432 ("SLE12: Cannot get networking to work in LXC containers"):
  -----------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=904432
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #911737 ("Starting a libvirt container depending on a stopped network ..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=911737
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #914297 ("virt-create-rootfs can't connect to SMT server"):
  ---------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=914297
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #914693 ("VUL-0: CVE-2015-0236: libvirt:  access control bypass"):
  ----------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=914693
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #921355 ("libvirt-tck qemu apparmor problems"):
  ---------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=921355
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #921555 ("libvirt qemu domain with hostdev can't start apparmor-enforc..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=921555
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #921586 ("default /etc/libvirt/qemu.conf settings prohibit Apparmor co..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=921586
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #936524 ("libvirt-lxc crashes when interface type='direct' is used in ..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=936524
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #938228 ("SLES11 SP4:  "virsh dumpxml domain" and "virsh migrate" fail..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=938228
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #948516 ("virsh dominfo - error "failed to get security label""):
  ---------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=948516
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #948686 ("Cluster fenced node and started 2 instances of VirtualDomain..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=948686
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #953110 ("VUL-1: CVE-2015-5313: libvirtd: Directory traversal"):
  --------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=953110
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  regression tests:
  -----------------
  List of testcases in Testopia:
  
  https://bugzilla.suse.com/tr_list_cases.cgi?tags_type=anyexact&tags=packagename_libvirt,packagename_libvirt-client,packagename_libvirt-client-32bit,packagename_libvirt-daemon,packagename_libvirt-daemon-config-network,packagename_libvirt-daemon-config-nwfilter,packagename_libvirt-daemon-driver-interface,packagename_libvirt-daemon-driver-libxl,packagename_libvirt-daemon-driver-lxc,packagename_libvirt-daemon-driver-network,packagename_libvirt-daemon-driver-nodedev,packagename_libvirt-daemon-driver-nwfilter,packagename_libvirt-daemon-driver-qemu,packagename_libvirt-daemon-driver-secret,packagename_libvirt-daemon-driver-storage,packagename_libvirt-daemon-lxc,packagename_libvirt-daemon-qemu,packagename_libvirt-daemon-xen,packagename_libvirt-devel,packagename_libvirt-doc,packagename_libvirt-lock-sanlock
  
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
  zypper patches | grep :p=1263
  zypper patches | awk -F "|" '/:p=1263>/ { print $2; }' | while read p; do zypper -n install -l -y -t patch $p; done
  zypper patches | grep :p=1263
