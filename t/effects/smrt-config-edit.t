smrt config edit: effects
=========================

setup::

  $ . $TESTROOT/setup

  $ smrt_chatty+=('do-edit%*')
  $ smrt_dryrun+=('do-edit%*')


behaviors::

  $ smrt config --system edit
  o do-edit */smrt (glob)

  $ smrt config edit
  o do-edit */.smrtrc (glob)

  $ SMRT_CONFIG=$PWD/omg.fubar smrt config edit
  o do-edit */omg.fubar (glob)


outputs::

  $ unset "smrt_chatty[(re)do-edit%*]"
  $ unset "smrt_dryrun[(re)do-edit%*]"
  $ smrt_chatty+=('myed%*')
  $ smrt_dryrun+=('myed%*')

  $ unset VISUAL
  $ export EDITOR=myed

  $ smrt config edit
  o myed */.smrtrc (glob)
