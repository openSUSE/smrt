smrt config set: effects
========================

setup::

  $ . $TESTROOT/setup


default::

  $ smrt config set issuer_apiurls foo:rofl bar:lmao

  $ smrt config get issuer_apiurls
  foo:rofl bar:lmao

  $ smrt config set issuer_apiurls fubar:omg snafu:wtf

  $ smrt config get issuer_apiurls
  fubar:omg snafu:wtf


SMRT_CONFIG::

  $ SMRT_CONFIG=mycfg smrt config set issuer_apiurls snafu:fubar rofl:lmao

  $ SMRT_CONFIG=mycfg smrt config get issuer_apiurls
  snafu:fubar rofl:lmao
