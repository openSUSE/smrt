smrt testopia
=============

setup::

  $ . $TESTROOT/setup
  $ smrt_chatty=('run-cmd%*' 'python*')
  $ smrt_dryrun=('python*')


test create::

  $ smrt testopia create bash
  o run-cmd */smrt-testopia create bash (glob)
  o python3 */smrt.testopia.py create bash (glob)


test list::

  $ smrt testopia list bash
  o run-cmd */smrt-testopia list bash (glob)
  o python3 */smrt.testopia.py list bash (glob)
