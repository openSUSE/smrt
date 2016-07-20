#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: smrt hosts [-h|<HOST>...]
Display information on attached hosts
  Options:
    -h                Display this message
  Operands:
    <HOST>            Display information on <HOST>

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
    ?)      reject-misuse -$arg ;;
    esac
  done; shift $i

  check-preconditions $0

  impl "$@"
} # }}}

function impl # {{{
{
  local f host tags
  for f in connected.*(N); do
    host=${f#*.}
    tags="${(pj: :)${(f)$(<$f)}}"
    print -f '%-28s %s\n' $host $tags
  done
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
