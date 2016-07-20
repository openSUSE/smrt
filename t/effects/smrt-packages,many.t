smrt packages: (extra) long listing
===================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1775:87780
  $ commit-fixture $slug

  $ smrt checkout $slug
  Checking out SUSE:Maintenance:1775:87780

  $ cd $slug


test::

  $ smrt packages
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     ppc64le SLE-SERVER:12-SP1
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     s390x   SLE-SERVER:12-SP1
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     x86_64  SLE-SERVER:12-SP1
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     ppc64le SLE-SERVER:12
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     s390x   SLE-SERVER:12
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     x86_64  SLE-SERVER:12
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     x86_64  SLE-DESKTOP:12-SP1
  typelib-1_0-GdkPixbuf-2_0        2.30.6-10.1     x86_64  SLE-DESKTOP:12
  libgdk_pixbuf-2_0-0-32bit        2.30.6-10.1     s390x   SLE-SERVER:12-SP1
  libgdk_pixbuf-2_0-0-32bit        2.30.6-10.1     x86_64  SLE-SERVER:12-SP1
  libgdk_pixbuf-2_0-0-32bit        2.30.6-10.1     s390x   SLE-SERVER:12
  libgdk_pixbuf-2_0-0-32bit        2.30.6-10.1     x86_64  SLE-SERVER:12
  libgdk_pixbuf-2_0-0-32bit        2.30.6-10.1     x86_64  SLE-DESKTOP:12-SP1
  libgdk_pixbuf-2_0-0-32bit        2.30.6-10.1     x86_64  SLE-DESKTOP:12
  libgdk_pixbuf-2_0-0              2.30.6-10.1     ppc64le SLE-SERVER:12-SP1
  libgdk_pixbuf-2_0-0              2.30.6-10.1     s390x   SLE-SERVER:12-SP1
  libgdk_pixbuf-2_0-0              2.30.6-10.1     x86_64  SLE-SERVER:12-SP1
  libgdk_pixbuf-2_0-0              2.30.6-10.1     ppc64le SLE-SERVER:12
  libgdk_pixbuf-2_0-0              2.30.6-10.1     s390x   SLE-SERVER:12
  libgdk_pixbuf-2_0-0              2.30.6-10.1     x86_64  SLE-SERVER:12
  libgdk_pixbuf-2_0-0              2.30.6-10.1     x86_64  SLE-DESKTOP:12-SP1
  libgdk_pixbuf-2_0-0              2.30.6-10.1     x86_64  SLE-DESKTOP:12
  gdk-pixbuf-query-loaders-32bit   2.30.6-10.1     s390x   SLE-SERVER:12-SP1
  gdk-pixbuf-query-loaders-32bit   2.30.6-10.1     x86_64  SLE-SERVER:12-SP1
  gdk-pixbuf-query-loaders-32bit   2.30.6-10.1     s390x   SLE-SERVER:12
  gdk-pixbuf-query-loaders-32bit   2.30.6-10.1     x86_64  SLE-SERVER:12
  gdk-pixbuf-query-loaders-32bit   2.30.6-10.1     x86_64  SLE-DESKTOP:12-SP1
  gdk-pixbuf-query-loaders-32bit   2.30.6-10.1     x86_64  SLE-DESKTOP:12
  gdk-pixbuf-query-loaders         2.30.6-10.1     ppc64le SLE-SERVER:12-SP1
  gdk-pixbuf-query-loaders         2.30.6-10.1     s390x   SLE-SERVER:12-SP1
  gdk-pixbuf-query-loaders         2.30.6-10.1     x86_64  SLE-SERVER:12-SP1
  gdk-pixbuf-query-loaders         2.30.6-10.1     ppc64le SLE-SERVER:12
  gdk-pixbuf-query-loaders         2.30.6-10.1     s390x   SLE-SERVER:12
  gdk-pixbuf-query-loaders         2.30.6-10.1     x86_64  SLE-SERVER:12
  gdk-pixbuf-query-loaders         2.30.6-10.1     x86_64  SLE-DESKTOP:12-SP1
  gdk-pixbuf-query-loaders         2.30.6-10.1     x86_64  SLE-DESKTOP:12
  gdk-pixbuf-lang                  2.30.6-10.1     noarch  SLE-SERVER:12-SP1
  gdk-pixbuf-lang                  2.30.6-10.1     noarch  SLE-SERVER:12
  gdk-pixbuf-lang                  2.30.6-10.1     noarch  SLE-DESKTOP:12-SP1
  gdk-pixbuf-lang                  2.30.6-10.1     noarch  SLE-DESKTOP:12
  gdk-pixbuf-devel                 2.30.6-10.1     ppc64le SLE-SDK:12-SP1
  gdk-pixbuf-devel                 2.30.6-10.1     s390x   SLE-SDK:12-SP1
  gdk-pixbuf-devel                 2.30.6-10.1     x86_64  SLE-SDK:12-SP1
  gdk-pixbuf-devel                 2.30.6-10.1     ppc64le SLE-SDK:12
  gdk-pixbuf-devel                 2.30.6-10.1     s390x   SLE-SDK:12
  gdk-pixbuf-devel                 2.30.6-10.1     x86_64  SLE-SDK:12
