smrt run: effects
=================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug

  $ cd $slug

  $ mkdir .connected
  $ touch .connected/snafu .connected/fubar


failure in some hosts::

  $ fake ssh <<\EOF
  > #!/usr/bin/zsh -efu
  > while getopts o: o; do
  >   :
  > done; shift $((OPTIND - 1))
  > [[ $1 == snafu ]] && shift
  > "$@"
  > exit 0
  > EOF

  $ smrt run snafu fubar -- echo rofl lmao
  snafu\trofl lmao (esc)
  fubar* command not found: * (glob)
  [1]


failure everywhere::

  $ fake ssh <<\EOF
  > #!/usr/bin/zsh -efu
  > echo >&2 "houston, we've got problem!"
  > exit 1
  > EOF

  $ cmd=${$(mktemp -u):t}
  $ smrt run snafu fubar -- $cmd rofl lmao
  snafu\thouston, we've got problem! (esc)
  fubar\thouston, we've got problem! (esc)
  [2]


happy path::

  $ fake ssh <<\EOF
  > #!/usr/bin/zsh -efu
  > while getopts o: o; do
  >   :
  > done; shift $((OPTIND)) # also hostname
  > "$@"
  > exit 0
  > EOF

  $ smrt run snafu fubar -- echo rofl lmao
  snafu\trofl lmao (esc)
  fubar\trofl lmao (esc)
