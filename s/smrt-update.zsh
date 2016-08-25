#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='
usage: #c -h|--help
usage: #c [HOST...]

Install current maintenance update

  Options:
    -h                Display this message
    --help            Display manual page
  Operands:
    HOST              [USER@]HOSTSPEC
'

declare -gr needs_workdir=1

declare -gr preludedir="${SMRT_PRELUDEDIR:-@preludedir@}"

. $preludedir/smrt.prelude.zsh || exit 2

function $0:t # {{{
{
  local opt arg
  local -i i=0
  while haveopt i opt arg h help -- "$@"; do
    case $opt in
    h|help) display-help $opt ;;
    ?)      reject-misuse -$arg ;;
    esac
  done; shift $i

  check-preconditions $0

  impl "$@"
} # }}}

function impl # {{{
{
  local -a hosts; hosts=("$@")
  local -r mrid=${${:-$(< slug)}##*:}
  local h=
  for h in $hosts; do
    :; [[ -e .connected/$~h ]] \
    || complain 1 "No earmark file for $h"
  done
  o run-in-hosts \
    $hosts \
    -- \
    "zypper patches | awk -F '|' '/:p=$mrid\>/ { print \$2; }' | while read p; do echo zypper -n install -l -y -t patch \$p; done"
} # }}}

$0:t "$@"
