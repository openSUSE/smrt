smrt bs <cmd> <mprj>
====================

setup::

  $ . $TESTROOT/setup

  $ mprj=SUSE:Maintenance:1302
  $ fixd=$FIXTURES/$mprj:87808

test the happy path::

  $ smrt bs packages $mprj > xml
  $ diff -u $fixd/packages.xml xml

  $ smrt bs patchinfo $mprj > xml
  $ diff -u $fixd/patchinfo.xml xml

  $ smrt bs project $mprj > xml
  $ diff -u $fixd/project.xml xml

  $ smrt bs repos $mprj > xml
  $ diff -u $fixd/repositories.xml xml
