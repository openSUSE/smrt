smrt mklog: effects
===================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2345:113343
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log


test::

  $ smrt mklog

  $ cat log
  SUMMARY: PASSED/FAILED
  
  comment: (none)
  
  $Author$
  
  Products: SLE-BSK 12 (ppc64le, s390x, x86_64), SLE-DESKTOP 12 (x86_64), SLE-SDK 12 (ppc64le, s390x, x86_64), SLE-SERVER 12 (ppc64le, s390x, x86_64)
  Category: security
  Rating: moderate
  Packager: architect@example.com
  Bugs: 959886, 960158, 963230, 965897, 967122, 970423, 970860, 972612, 972727, 973848
  ReviewRequestID: SUSE:Maintenance:2345:113343
  Repository: http://download.suse.de/ibs/SUSE:/Maintenance:/2345/
  Packages: libgudev-1_0-0 = 210-70.46.1, libgudev-1_0-0-32bit = 210-70.46.1, libgudev-1_0-devel = 210-70.46.1, libudev-devel = 210-70.46.1, libudev-mini-devel = 210-70.46.1, libudev-mini1 = 210-70.46.1, libudev1 = 210-70.46.1, libudev1-32bit = 210-70.46.1, systemd = 210-70.46.1, systemd-32bit = 210-70.46.1, systemd-bash-completion = 210-70.46.1, systemd-devel = 210-70.46.1, systemd-mini = 210-70.46.1, systemd-mini-devel = 210-70.46.1, systemd-sysvinit = 210-70.46.1, typelib-1_0-GUdev-1_0 = 210-70.46.1, udev = 210-70.46.1, udev-mini = 210-70.46.1
  SRCRPMs: systemd, systemd-mini
  Suggested Test Plan Reviewers: systemd-maintainers@suse.de
  Testplatform: base=sled(major=12,minor=);arch=[x86_64]
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64]
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64];addon=bsk(major=12,minor=)
  Testplatform: base=sles(major=12,minor=);arch=[s390x,x86_64];addon=sdk(major=12,minor=)
  
  #############################
  Test results by product-arch:
  #############################
  
  
  ########################
  notes for/by the tester:
  ########################
  
  Bug #959886 ("L3: Fails to provide echo/prompt in EMERGENCY mode"):
  -------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=959886
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  additional info from L3:
  
  \tIncident ID:        44467 (esc)
  \tSummary: (esc)
  \t\tSystem booting with 'emergency' cmdline option didn't show a proper shell. The problem was the working directory of the emergency shell was changed so that default utilities couldn't be found resulting into the reported misbehavior. (esc)
  \tProbability:        low (esc)
  \tImpact:             high (esc)
  \tPatch:              correct (esc)
  \tReproducer: (esc)
  \t\tUnfortunately, no local reproducer is available. (esc)
  \tRequires 3rd-party: no (esc)
  
  ...
  
  Bug #960158 ("nfs-utils and nfs-server make systemd fill up the logs ...."):
  ----------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=960158
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #963230 ("systemd ignores systemd.log_level=debug in cmdline with quie..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=963230
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #965897 ("hostnamectl set-hostname fails to set hostnames with "." at ..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=965897
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #967122 ("systemctl bash completion not working properly for "start" a..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=967122
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #970423 ("systemd: fstab-generator doesn't honor automount option"):
  ------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=970423
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #970860 ("missing support for gpio triggered graceful system shutdown"):
  ----------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=970860
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #972612 ("VUL-1: systemd: Archived journal files are world readable"):
  --------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=972612
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  ...
  
  Bug #972727 ("'dmsetup remove' always fails when the --force option is use..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=972727
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  additional info from L3:
  
  \tIncident ID:        45146 (esc)
  \tSummary: (esc)
  \t\tSee SG:43793 (this is a regression incident). (esc)
  \tProbability:        n/a (esc)
  \tImpact:             low (esc)
  \tPatch:              correct (esc)
  \tReproducer: (esc)
  \t\tSame as SG:43793 (this is a regression). (esc)
  \tRequires 3rd-party: no (esc)
  
  ...
  
  Bug #973848 ("system-journal has executable rights set for all (755) after..."):
  --------------------------------------------------------------------------------
  
  https://bugzilla.suse.com/show_bug.cgi?id=973848
  
  REPRODUCER_PRESENT:     YES/NO
  REPRODUCER_COVERAGE:    YES/NO
  REPRODUCER_APPLICABLE:  YES/NO
  REPRODUCER_WORKING:     YES/NO
  REPRODUCER_AUTOMATABLE: YES/NO
  
  additional info from L3:
  
  \tIncident ID:        45184 (esc)
  \tSummary: (esc)
  \t\tLog files kept by journald have: a) excutable bits set, b) are readable for all. This is seen only after reboot, manual restart of systemd-journald.service fixes the permissions. (esc)
  \tProbability:        high (esc)
  \tImpact:             low (esc)
  \tPatch:              not_isolated (esc)
  \tReproducer: (esc)
  \t\t- use default configuration of systemd-journald (so that it logs to /run/log) (esc)
  \t\t- reboot (esc)
  \t\t- file /run/log/journal/*/system.journal has the reported 755 mode (esc)
  \tRequires 3rd-party: no (esc)
  
  ...
  
  regression tests:
  -----------------
  List of testcases in Testopia:
  
  https://bugzilla.suse.com/tr_list_cases.cgi?tags_type=anyexact&tags=packagename_libgudev-1_0-0,packagename_libgudev-1_0-0-32bit,packagename_libgudev-1_0-devel,packagename_libudev-devel,packagename_libudev-mini-devel,packagename_libudev-mini1,packagename_libudev1,packagename_libudev1-32bit,packagename_systemd,packagename_systemd-32bit,packagename_systemd-bash-completion,packagename_systemd-devel,packagename_systemd-mini,packagename_systemd-mini-devel,packagename_systemd-sysvinit,packagename_typelib-1_0-GUdev-1_0,packagename_udev,packagename_udev-mini
  
  Install this update on a minimal system without any other maintenance updates applied and check that:
  - the system can successfully reboot without (new) errors
  - you can install all released maintenance updates
  
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
  zypper patches | grep :p=2345
  zypper patches | awk -F "|" '/:p=2345>/ { print $2; }' | while read p; do zypper -n install -l -y -t patch $p; done
  zypper patches | grep :p=2345


  $ cd ..
  $ slug=SUSE:Maintenance:2452:115035
  $ reify-fixture $slug
  $ cd $slug

  $ smrt mklog
  $ sed -n '/^additional info/,/^\.\.\.$/p' log
  additional info from L3:
  
  \tIncident ID:        45098 (esc)
  \tSummary: (esc)
  \t\tyast2-cluster module wasn't able to generate proper corosync.conf since it couldn't process IPv6 addresses correctly. (esc)
  \tProbability:        n/a (esc)
  \tImpact:             low (esc)
  \tPatch:              correct (esc)
  \tReproducer: (esc)
  \t\tThe steps are in [1], there up to the last case (Unicast (2/2)) the fix should work for this. (esc)
  \t\t (esc)
  \t\t[1] https://bugzilla.suse.com/show_bug.cgi?id=971961#c0 (esc)
  \tRequires 3rd-party: no (esc)
  
  ...
