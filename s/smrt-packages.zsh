#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c [-h|<HOST>...]
Display version information for packages under test
  Options:
    -h                Display this message
  Operands:
    <HOST>            Display version information for packages under test
                      as currently installed (or not) on <HOST>

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
    h|help) display-help ;;
    *)      reject-misuse -$arg ;;
    esac
  done; shift $i

  check-preconditions $0

  impl "$@"
} # }}}

function impl # {{{
{
  local repo uprj uprjver arch pkg ver rel
  o cat binaries \
  | while read repo uprj arch pkg ver rel; do
      uprj=${${uprj#*:Updates:}%:*}
      print -r $pkg ${uprj%:*} ${uprj##*:} $arch $ver $rel $repo
    done \
  | sort -k 1,3r -k 4,7 \
  | while read pkg uprj uprjver arch ver rel repo; do
      print -f '%-32s %-15s %-7s %s:%s\n' \
        $pkg $ver-$rel $arch $uprj $uprjver
    done \
  | uniq
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
