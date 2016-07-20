#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|<ID>
Download metadata for a maintenance request
  Options:
    -h                Display this message
  Operands:
    <ID>              Checkout a maintenance update <ID>

'

declare -gr needs_config=testreport_repository

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

  arg=${1-}
  case $arg in
  $~PATTERN_MRID|$~PATTERN_SLUG) : ;;
  *) reject-misuse $arg ;;
  esac

  o check-preconditions $0

  o impl "$@"
} # }}}

function impl # {{{
{
  local name=$1
  print Checking out $name
  mkdir -p $name
  o svn -q checkout $config_testreport_repository/$name $name/
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
