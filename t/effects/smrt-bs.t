smrt bs: effects
================

setup::

  $ . $TESTROOT/setup

  $ mprj=SUSE:Maintenance:1302
  $ mrid=87808
  $ fixd=$FIXTURES/$mprj:$mrid

test::

  $ smrt bs packages $mprj > xml
  $ diff -u $fixd/packages.xml xml

  $ smrt bs patchinfo $mprj > xml
  $ diff -u $fixd/patchinfo.xml xml

  $ smrt bs project $mprj > xml
  $ diff -u $fixd/project.xml xml

  $ smrt bs repos $mprj > xml
  $ diff -u $fixd/repositories.xml xml
