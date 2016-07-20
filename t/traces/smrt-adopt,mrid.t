smrt adopt: traces
==================

setup::

  $ . $TESTROOT/setup

  $ smrt_chatty+=(
  >   '(*%)#smrt%*'
  > )

  $ slug=SUSE:Maintenance:1302:87808


ReviewRequestID (requires --issuer)::

note: this needs to demonstrate that smrt-fetch actually
received `SMRT_ISSUER=SUSE` in the environment.

  $ smrt --issuer SUSE adopt ${slug##*:}
  o env SMRT_CMDNAME=smrt-adopt smrt fetch --adopt --push 87808
  Downloading SUSE:Maintenance:1302:87808 metadata
  o smrt push
  Publishing results into
    *://*/SUSE:Maintenance:1302:87808 (glob)
    *://*/SUSE:Maintenance:1302:87808 (glob)
