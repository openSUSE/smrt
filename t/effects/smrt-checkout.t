smrt checkout: effects
======================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ commit-fixture $slug


happy path::

  $ smrt checkout $slug
  Checking out SUSE:Maintenance:1302:87808

  $ (cd $slug && print -l *(DM))
  .svn/
  allarchtrigger
  binaries
  bugs/
  issues
  l3s.xml
  maintainers
  minimaltrigger
  owners-rsync.xml
  packages.xml
  patchinfo
  patchinfo.xml
  person-farmer.xml
  productdefs
  productdefs.pm
  project.xml
  repos-binaries
  repos-sources
  repositories.xml
  request.diff
  request.diff.xml
  request.xml
  reviewers
  rsync-source.diff
  slug
  sources
  testplatforms
  testplatforms.pm

  $ compare-with-fixture $slug
  good: SUSE:Maintenance:1302:87808/allarchtrigger
  good: SUSE:Maintenance:1302:87808/binaries
  good: SUSE:Maintenance:1302:87808/bugs/bnc898513/subject
  good: SUSE:Maintenance:1302:87808/bugs/bnc898513/url
  good: SUSE:Maintenance:1302:87808/bugs/bnc900914/subject
  good: SUSE:Maintenance:1302:87808/bugs/bnc900914/url
  good: SUSE:Maintenance:1302:87808/bugs/bnc915410/subject
  good: SUSE:Maintenance:1302:87808/bugs/bnc915410/url
  good: SUSE:Maintenance:1302:87808/bugs/bnc922710/subject
  good: SUSE:Maintenance:1302:87808/bugs/bnc922710/url
  good: SUSE:Maintenance:1302:87808/issues
  good: SUSE:Maintenance:1302:87808/l3s.xml
  good: SUSE:Maintenance:1302:87808/maintainers
  good: SUSE:Maintenance:1302:87808/minimaltrigger
  good: SUSE:Maintenance:1302:87808/owners-rsync.xml
  good: SUSE:Maintenance:1302:87808/packages.xml
  good: SUSE:Maintenance:1302:87808/patchinfo
  good: SUSE:Maintenance:1302:87808/patchinfo.xml
  good: SUSE:Maintenance:1302:87808/person-farmer.xml
  good: SUSE:Maintenance:1302:87808/productdefs
  good: SUSE:Maintenance:1302:87808/productdefs.pm
  good: SUSE:Maintenance:1302:87808/project.xml
  good: SUSE:Maintenance:1302:87808/repos-binaries
  good: SUSE:Maintenance:1302:87808/repos-sources
  good: SUSE:Maintenance:1302:87808/repositories.xml
  good: SUSE:Maintenance:1302:87808/request.diff
  good: SUSE:Maintenance:1302:87808/request.diff.xml
  good: SUSE:Maintenance:1302:87808/request.xml
  good: SUSE:Maintenance:1302:87808/reviewers
  good: SUSE:Maintenance:1302:87808/rsync-source.diff
  good: SUSE:Maintenance:1302:87808/slug
  good: SUSE:Maintenance:1302:87808/sources
  good: SUSE:Maintenance:1302:87808/testplatforms
  good: SUSE:Maintenance:1302:87808/testplatforms.pm
