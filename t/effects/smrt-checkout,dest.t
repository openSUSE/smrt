smrt checkout: effects
======================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ commit-fixture $slug


rejects existing non-directory destinations::

  $ dest=roflmao
  $ touch $dest

  $ smrt checkout $slug $dest
  error: refusing to clobber existing destination roflmao
  [1]


rejects existing non-empty directories::

  $ dest=snafubar
  $ mkdir -p $dest/.lol

  $ smrt checkout $slug $dest
  error: refusing to clobber existing destination snafubar
  [1]


happy path::

  $ dest=right-here

  $ smrt checkout $slug $dest
  Checking out SUSE:Maintenance:1302:87808 into right-here

  $ (cd $dest && print -l *(DM))
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

  $ compare-with-fixture $slug $dest
  good: right-here/allarchtrigger
  good: right-here/binaries
  good: right-here/bugs/bnc898513/subject
  good: right-here/bugs/bnc898513/url
  good: right-here/bugs/bnc900914/subject
  good: right-here/bugs/bnc900914/url
  good: right-here/bugs/bnc915410/subject
  good: right-here/bugs/bnc915410/url
  good: right-here/bugs/bnc922710/subject
  good: right-here/bugs/bnc922710/url
  good: right-here/issues
  good: right-here/l3s.xml
  good: right-here/maintainers
  good: right-here/minimaltrigger
  good: right-here/owners-rsync.xml
  good: right-here/packages.xml
  good: right-here/patchinfo
  good: right-here/patchinfo.xml
  good: right-here/person-farmer.xml
  good: right-here/productdefs
  good: right-here/productdefs.pm
  good: right-here/project.xml
  good: right-here/repos-binaries
  good: right-here/repos-sources
  good: right-here/repositories.xml
  good: right-here/request.diff
  good: right-here/request.diff.xml
  good: right-here/request.xml
  good: right-here/reviewers
  good: right-here/rsync-source.diff
  good: right-here/slug
  good: right-here/sources
  good: right-here/testplatforms
  good: right-here/testplatforms.pm
