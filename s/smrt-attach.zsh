#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|<HOST> <PRODUCT>...
Ssh into a refhost and earmark it for testing given products
  Options:
    -h                Display this message
  Operands:
    <HOST>            [<USER>@]<HOSTSPEC>
    <PRODUCT>         Lorem ipsum

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

  (( $# > 1 )) || reject-misuse

  check-preconditions $0

  impl "$@"
} # }}}

function impl # {{{
{
  local t=$1
  shift
  print -f 'Connecting to %s for %s\n' $t "$*"
  o ssh -MNf $t
  o redir -1 connected.$t print -f '%s\n' -- "$@"
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
