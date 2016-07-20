#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|<CMD> <PATH>...
Manipulate the testreport repository
  Options:
    -h                Display this message

  Operands:
    add               Put <PATH>s under version control
    remove            Remove <PATH>s from version control
    checkin           Persist <PATH>s in the repository
    checkout          Check out <PATH>s from the repository

'

declare -gr needs_config='testreport_repository'

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

  local cmd=${1-}
  case $cmd in
  add|checkin|checkout|commit|remove) : ;;
  *) reject-misuse $cmd ;;
  esac

  (( $# > 1 )) || reject-misuse
  check-preconditions $0
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
