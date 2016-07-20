.. vim: ft=rst sw=2 sts=2 et tw=72

#######################################################################
                                 SMRT
#######################################################################
=======================================================================
                          Differences to MTUI
=======================================================================


Introduction
############

SMRT is a prospective successor to MTUI, the Maintenance Test Update
Installer.


Interface
#########

SMRT does *not* provide its own poor shell: you already have a shell
on your computer and it's much more powerful, and much less buggy,
than whatever we can hope to provide given the limited manpower.

Why does MTUI have a shell at all?  MTUI keeps state, such as ssh
connections to refhosts, between commands.  This is a sensible thing
given the speed (not really) of some of our refhosts.  Staying in
a single long-lived foreground process with an interactive shell is
superficially easier than going client/server with the server keeping
the state on a UNIX doman socket and clients implementing individual
MTUI commands.


Scripting
#########

MTUI has rudimentary scripting support through its `--prerun` option,
there's no error handling or any other flow control.

SMRT is a collection of noninteractive commandline programs.  If you
want to script it, knock yourself out in any language you fancy.


Modularity and Extensions
#########################

While MTUI is a monolith giving its user no frontdoor extension
mechanism, SMRT is open-ended.

In particular, SMRT keeps its metadata in line-oriented text files,
enabling casual exploration using `grep(1)` and similar.


Input acquisition
#################

SMRT takes over the responsibilities of qa_maintained_template_bs.pl_.
In particular, the `metadata/reviewers`_ file has been replaced with
`osc api` calls.

.. _`qa_maintained_template_bs.pl`:
  https://gitlab.suse.de/qa-maintenance/templates-management/blob/master/qa_maintained_template_bs.pl
.. _`metadata/reviewers`:
  https://gitlab.suse.de/qa-maintenance/metadata/blob/master/reviewers


Performance Impact
==================

MTUI inputs (testreport templates) are generated in a serial fashion,
and the delay between 1. coordination releasing an update into testing
and 2. the template getting generated has already caused problems
on several occasions.  In fact, the problem was deemed so severe that
qam-oscplugin_ now includes code to check that the template has been
generated before permitting its user to adopt a review request.
(The problem was/is that the generator considers only review requests
with no reviewer assigned.)

Initial metadata acquisition with SMRT amounts to a handful `osc api`
calls (potentially up to a few dozen) and is expected to be slower than
the MTUI equivalent.  Then again, SMRT collects more than the
time-constrained serial generator can afford to.

.. _qam-oscplugin:
  https://gitlab.suse.de/qa-maintenance/qam-oscplugin

