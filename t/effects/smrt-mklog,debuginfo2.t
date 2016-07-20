smrt mklog: handling of debuginfo, debugsource packages
=======================================================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:2684:115702
  $ reify-fixture $slug
  $ cd $slug
  $ rm -f log packages-list.txt


test::

  $ smrt mklog

  $ sed -n '/^Packages: /{p;q;}' log
  Packages: glib2 = 2.22.5-0.8.26.1, glib2-devel = 2.22.5-0.8.26.1, glib2-devel-32bit = 2.22.5-0.8.26.1, glib2-doc = 2.22.5-0.8.26.1, glib2-lang = 2.22.5-0.8.26.1, libgio-2_0-0 = 2.22.5-0.8.26.1, libgio-2_0-0-32bit = 2.22.5-0.8.26.1, libgio-2_0-0-x86 = 2.22.5-0.8.26.1, libgio-fam = 2.22.5-0.8.26.1, libglib-2_0-0 = 2.22.5-0.8.26.1, libglib-2_0-0-32bit = 2.22.5-0.8.26.1, libglib-2_0-0-x86 = 2.22.5-0.8.26.1, libgmodule-2_0-0 = 2.22.5-0.8.26.1, libgmodule-2_0-0-32bit = 2.22.5-0.8.26.1, libgmodule-2_0-0-x86 = 2.22.5-0.8.26.1, libgobject-2_0-0 = 2.22.5-0.8.26.1, libgobject-2_0-0-32bit = 2.22.5-0.8.26.1, libgobject-2_0-0-x86 = 2.22.5-0.8.26.1, libgthread-2_0-0 = 2.22.5-0.8.26.1, libgthread-2_0-0-32bit = 2.22.5-0.8.26.1, libgthread-2_0-0-x86 = 2.22.5-0.8.26.1, pango = 1.26.2-1.5.1, pango-32bit = 1.26.2-1.5.1, pango-devel = 1.26.2-1.5.1, pango-devel-32bit = 1.26.2-1.5.1, pango-doc = 1.26.2-1.5.1, pango-x86 = 1.26.2-1.5.1

  $ sed -n '/tr_list_cases.cgi/{p;q;}' log
  https://bugzilla.suse.com/tr_list_cases.cgi?tags_type=anyexact&tags=packagename_glib2,packagename_glib2-devel,packagename_glib2-devel-32bit,packagename_glib2-doc,packagename_glib2-lang,packagename_libgio-2_0-0,packagename_libgio-2_0-0-32bit,packagename_libgio-2_0-0-x86,packagename_libgio-fam,packagename_libglib-2_0-0,packagename_libglib-2_0-0-32bit,packagename_libglib-2_0-0-x86,packagename_libgmodule-2_0-0,packagename_libgmodule-2_0-0-32bit,packagename_libgmodule-2_0-0-x86,packagename_libgobject-2_0-0,packagename_libgobject-2_0-0-32bit,packagename_libgobject-2_0-0-x86,packagename_libgthread-2_0-0,packagename_libgthread-2_0-0-32bit,packagename_libgthread-2_0-0-x86,packagename_pango,packagename_pango-32bit,packagename_pango-devel,packagename_pango-devel-32bit,packagename_pango-doc,packagename_pango-x86

  $ grep -Eie '-debug(info|source)' packages-list.txt
  [1]
