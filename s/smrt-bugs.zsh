#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c [-h|browse|urls|<BUG>...]
List or browse bugs related to a maintenance request
  Options:
    -h                Display this message
  Operands:
    <BUG>             Open a bug in a browser
    browse            Open all bugs in a browser
    urls              List bug URLs, one per line

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

  arg=${1-list}
  case $arg in
  browse|list|urls) : ;;
  *) reject-misuse $1 ;;
  esac

  check-preconditions $0

  do-$arg bugs/bnc*(/:t)
} # }}}

function do-browse # {{{
{
  (( $# )) || complain 1 "no bugs found"
  o print "Reminder: bugs may be invisible to unauthorized users"
  o xdg-open "$config_bugzilla_url/buglist.cgi?bug_id="${(j:,:)@#bnc}
} # }}}

function do-list # {{{
{
  local bugdir first=1
  for bugdir in bugs/$^@; do
    if (( first )); then
      first=0
    else
      print
    fi
    cat $bugdir/url
    cat $bugdir/subject
  done
} # }}}

function do-urls # {{{
{
  local bugid
  (( $# )) || complain 1 "no bugs found"
  for bugid in ${@#bnc}; do
    print -f "%s/show_bug.cgi?id=%s\n" $config_bugzilla_url $bugid
  done
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
