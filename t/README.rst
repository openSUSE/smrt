.. vim: ft=rst sw=2 sts=2 et tw=72

#######################################################################
                              SMRT Tests
#######################################################################

This directory contains SMRT's testsuite:

`setup`
  Test initialization and other common code.
`fixtures/dot.smrtrc`
  SMRT configuration used by the tests.
`fixtures/smrt.overrides`
  Mock versions of SMRT's implementation details which access remote
  resources, currently `osc(1)` and `ssh(1)`.
`fixtures/*/`
  Data for several real-world maintenance requests, used by tests.
`usage/*.t`
  Test cases for subcommand interface boundaries: help screens,
  complaints about misuse (unknown options, missing or extraneous
  arguments), etc.  All the *early return* code paths should be
  tested here, and nothing else.
`effects/*.t`
  These tests let the software run almost fully (`osc(1)` and `svn(1)`
  are still mocked out) and verify `smrt`'s postconditions.
`traces/*.t`
  These run `smrt` with appropriate `$SMRT_CHATTY` values to obtain
  tracing information.  Useful as a debugging-oriented counterpart
  to `effects/*.t`.

The tests are written for Cram_ + Zsh_ and run through `make check`
in the top of the source tree, see `../GNUmakefile`_.

.. _Cram: https://bitheap.org/cram/
.. _Zsh: http://www.zsh.org/
.. _../GNUmakefile: ../GNUmakefile
