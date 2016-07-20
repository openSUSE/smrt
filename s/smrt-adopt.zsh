#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|<MRID>|<MPRJ>
Adopt a maintenance request for testing
  Options:
    -h                Display this message
  Operands:
    <MRID>            Maintenance request <MRID>
    <MPRJ>            Maintenance request currently linked into
                      the maintenance project <MPRJ>
    <MPRJ>:<MRID>     Maintenance request <MRID>

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

  o env SMRT_CMDNAME=smrt-adopt smrt fetch --adopt --push "$@"
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
