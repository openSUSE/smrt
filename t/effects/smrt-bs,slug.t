smrt bs <cmd> <slug>
====================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ fixd=$FIXTURES/$slug

test the happy path::

  $ smrt bs packages $slug > xml
  $ diff -u $fixd/packages.xml xml

  $ smrt bs patchinfo $slug > xml
  $ diff -u $fixd/patchinfo.xml xml

  $ smrt bs project $slug > xml
  $ diff -u $fixd/project.xml xml

  $ smrt bs repos $slug > xml
  $ diff -u $fixd/repositories.xml xml

  $ smrt bs request $slug > xml
  $ diff -u $fixd/request.xml xml
