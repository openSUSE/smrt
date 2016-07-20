#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|<CMD> <MPRJ>
Download XML data for a maintenance request from the BuildService
  Options:
    -h                Display this message

  Operands:
    packages          Download packages.xml data
    patchinfo         Download patchinfo.xml data
    project           Download project.xml data
    repos             Download repositories.xml data
    <MPRJ>            <ISSUER>:Maintenance:<ISSUE>

'

declare -gr preludedir="${SMRT_PRELUDEDIR:-@preludedir@}"

. $preludedir/smrt.prelude.zsh || exit 2

. $preludedir/smrt.bs.zsh

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

  local cmd=${1-} arg=${2-}
  case $cmd in
  packages|patchinfo|project|repos)
    case $arg in
    $~PATTERN_MPRJ)
      : ${SMRT_ISSUER:=${arg%%:*}}
    ;;
    *) reject-misuse $arg ;;
    esac
  ;;
  *)
    reject-misuse $cmd
  ;;
  esac

  (( $# == 2 )) || reject-misuse $3

  check-preconditions $0

  bs-fetch-$cmd $arg
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
