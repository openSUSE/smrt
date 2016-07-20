#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=$0:t

# FIXME: the duplicated summaries == PITA
declare -gr cmdhelp="

usage: #c -h|[--issuer=<ISSUER>] <COMMAND> [<option>]... [<argument>]...
  Options:
    -h                Display this message
    -I, --issuer      Assume <ISSUER> for commands which take
                      maintenance request ids
  Operands:
    <COMMAND>         One of the commands listed below

  Commands:
    adopt             Adopt a maintenance request for testing
    attach            Ssh into a refhost and earmark it for testing given products
    bs                Download XML data for a maintenance request from the BuildService
    bugs              List or browse bugs related to a maintenance request
    checkout          Download metadata for a maintenance request
    config            Manipulate smrt configuration file
    fetch             Download metadata for a maintenance request
    hosts             Display information on attached hosts
    mklog             Create MTUI-compatible testreport
    packages          Display version information for packages under test
    push              Publish metadata for a maintenance request
    xml               Display information gleaned from BuildService XML data

"

declare -gr preludedir="${SMRT_PRELUDEDIR:-@preludedir@}"

. $preludedir/smrt.prelude.zsh || exit 2

function main # {{{
{
  local opt arg
  local -i i=0
  while haveopt i opt arg h help I= issuer= -- "$@"; do
    case $opt in
    h|help)   display-help ;;
    I|issuer) declare -gx SMRT_ISSUER=$arg ;;
    *)        reject-misuse -$arg ;;
    esac
  done; shift $i

  (( $# )) || display-help

  local next
  o find-cmd $1 next
  o run-cmd $next $@[2,-1]
} # }}}

function find-cmd # {{{
{
  local name=smrt-$1 reply=$2 impl=

  for impl in $name $bindir/$name; do
    if impl=$(whence $impl); then
      : ${(P)reply::=$impl}
      return
    fi
  done

  complain 1 "unknown command ${(qq)1}"
} # }}}

function run-cmd # {{{
{
  "$@"
} # }}}

. $preludedir/smrt.coda.zsh

bindir=$0:h main "$@"
