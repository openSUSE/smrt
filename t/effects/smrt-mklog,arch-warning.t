smrt mklog: effects
===================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2569:114638
  $ smrt fetch $slug
  Downloading SUSE:Maintenance:2569:114638 metadata
  $ cd $slug

test::

  $ cat warnings
  the list of architectures for product "SLE-Module-Containers 12" is not matching!
  it should have: ppc64le, s390x, x86_64
  it has: x86_64

  $ smrt mklog

  $ sed -n '/^comment:$/,/^\$Author/p' log
  comment:
  \tWARNING: (esc)
  \tthe list of architectures for product "SLE-Module-Containers 12" is not matching! (esc)
  \tit should have: ppc64le, s390x, x86_64 (esc)
  \tit has: x86_64 (esc)
  
  
  $Author$
