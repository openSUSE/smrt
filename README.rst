.. vim: ft=rst sw=2 sts=2 et tw=72

#######################################################################
                                 SMRT
#######################################################################
=======================================================================
                     SUSE Maintenance Reject Tool
=======================================================================


Disclaimer
##########

SMRT is just emerging from the inception phase, with a long way to go
before it reaches maturity.  While most of this document describes past
or present reality, much of it is aspirational.  Sentences writeen in
future tense ("SMRT will ...") should not be construed as promises.


Introduction
############

SMRT is a command-line tool for SUSE QAM testers.  SMRT provides
a convenient interface to a range of remote services used during
the testing of a maintenance update, from manipulating the review
request in IBS through bugfix verification and regression tests
to accessing the repository of test results.


Interface
#########

SMRT is a CLI program exposing its functionality using the
*<command> <subcommand>* structure which should be familiar from
any number of other tools.

SMRT is structured as an open collection of programs.
Users can add new functionality or even replace existing behaviors,
all by adding programs named `smrt-<whatever>` to their `$PATH`.
`smrt foo` is a thing as long as there is `smrt-foo` in `$PATH`.

SMRT stores its metadata in text files as line-terminated records with
whitespace-separated fields.  Such data is easy to work with using the
standard suite of commandline utilities.
