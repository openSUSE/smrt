smrt fetch: effects
===================

setup::

  $ . $TESTROOT/setup


test::

  $ slug=SUSE:Maintenance:2345:113343
  $ smrt fetch $slug
  Downloading SUSE:Maintenance:2345:113343 metadata
  $ compare-with-fixture $slug
  good: SUSE:Maintenance:2345:113343/allarchtrigger
  good: SUSE:Maintenance:2345:113343/binaries
  good: SUSE:Maintenance:2345:113343/bugs/bnc959886/l3info.44467
  good: SUSE:Maintenance:2345:113343/bugs/bnc959886/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc959886/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc960158/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc960158/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc963230/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc963230/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc965897/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc965897/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc967122/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc967122/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc970423/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc970423/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc970860/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc970860/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc972612/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc972612/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc972727/l3info.45146
  good: SUSE:Maintenance:2345:113343/bugs/bnc972727/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc972727/url
  good: SUSE:Maintenance:2345:113343/bugs/bnc973848/l3info.45184
  good: SUSE:Maintenance:2345:113343/bugs/bnc973848/subject
  good: SUSE:Maintenance:2345:113343/bugs/bnc973848/url
  good: SUSE:Maintenance:2345:113343/group-systemd-maintainers.xml
  good: SUSE:Maintenance:2345:113343/hints
  good: SUSE:Maintenance:2345:113343/issues
  good: SUSE:Maintenance:2345:113343/l3s.xml
  good: SUSE:Maintenance:2345:113343/maintainers
  good: SUSE:Maintenance:2345:113343/minimaltrigger
  good: SUSE:Maintenance:2345:113343/owners-systemd-mini.xml
  good: SUSE:Maintenance:2345:113343/owners-systemd.xml
  good: SUSE:Maintenance:2345:113343/packages.xml
  good: SUSE:Maintenance:2345:113343/patchinfo
  good: SUSE:Maintenance:2345:113343/patchinfo.xml
  good: SUSE:Maintenance:2345:113343/person-architect.xml
  good: SUSE:Maintenance:2345:113343/productdefs
  good: SUSE:Maintenance:2345:113343/productdefs.pm
  good: SUSE:Maintenance:2345:113343/project.xml
  good: SUSE:Maintenance:2345:113343/repos-binaries
  good: SUSE:Maintenance:2345:113343/repos-sources
  good: SUSE:Maintenance:2345:113343/repositories.xml
  good: SUSE:Maintenance:2345:113343/request.diff
  good: SUSE:Maintenance:2345:113343/request.diff.xml
  good: SUSE:Maintenance:2345:113343/request.xml
  good: SUSE:Maintenance:2345:113343/reviewers
  good: SUSE:Maintenance:2345:113343/slug
  good: SUSE:Maintenance:2345:113343/sources
  good: SUSE:Maintenance:2345:113343/testplatforms
  good: SUSE:Maintenance:2345:113343/testplatforms.pm

  $ cat $slug/bugs/bnc959886/l3info.*
  incident=44467
  summary=System booting with 'emergency' cmdline option didn't show a proper shell. The problem was the working directory of the emergency shell was changed so that default utilities couldn't be found resulting into the reported misbehavior.
  probability=low
  impact=high
  patch=correct
  reproducer=Unfortunately, no local reproducer is available.
  requires_3dparty=no

  $ cat $slug/bugs/bnc973848/l3info.*
  incident=45184
  summary=Log files kept by journald have: a) excutable bits set, b) are readable for all. This is seen only after reboot, manual restart of systemd-journald.service fixes the permissions.
  probability=high
  impact=low
  patch=not_isolated
  reproducer=- use default configuration of systemd-journald (so that it logs to /run/log)
  reproducer=- reboot
  reproducer=- file /run/log/journal/*/system.journal has the reported 755 mode
  requires_3dparty=no



  $ slug=SUSE:Maintenance:2452:115035
  $ smrt fetch $slug
  Downloading SUSE:Maintenance:2452:115035 metadata

  $ cat $slug/bugs/bnc*/l3info.*
  incident=45098
  summary=yast2-cluster module wasn't able to generate proper corosync.conf since it couldn't process IPv6 addresses correctly.
  probability=n/a
  impact=low
  patch=correct
  reproducer=The steps are in [1], there up to the last case (Unicast (2/2)) the fix should work for this.
  reproducer=
  reproducer=[1] https://bugzilla.suse.com/show_bug.cgi?id=971961#c0
  requires_3dparty=no
