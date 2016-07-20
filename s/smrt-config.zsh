#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|edit|get <KEY>|set <KEY> <VAL>
Manipulate smrt configuration file
  Options:
    -h                Display this message
  Operands:
    <KEY>             Configuration key
    <VAL>             Configuration value

'

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

  arg=${1-show}
  case $arg in
  edit|show) : ;;
  *) reject-misuse $1 ;;
  esac

  do-$arg $SMRT_CONFIG
} # }}}

function do-edit # {{{
{
  o ${VISUAL:-${EDITOR:-vi}} $1
} # }}}

function do-show # {{{
{
  local n p v
  for n in $config_names; do
    p=config_$n
    v=${(P)p:-}
    print -f "%s =%s\n" $n ${v:+ $v}
  done
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
