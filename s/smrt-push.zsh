#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c [-h]
Publish metadata for a maintenance request
  Options:
    -h                Display this message

'

declare -gr needs_workdir=1
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

  (( $# == 0 )) || reject-misuse $1

  o check-preconditions $0

  o impl "$@"
} # }}}

function impl # {{{
{
  local slug=$(< slug)
  local repo=$config_testreport_repository
  [[ -d .svn ]] || {
    :; o svn info $repo/$slug >/dev/null 2>&1 \
    || o svn -q mkdir -m SMRT $repo/$slug

    o svn -q checkout $repo/$slug .checkout
    o mv -n .checkout/*(D) .
    o rm -r .checkout
  }
  local -a news
  local line
  o svn status \
  | while IFS= read line; do
      [[ $line == \?* ]] || continue
      news+=($line[9,-1])
    done

  (( $#news )) || {
    complain 1 'nothing to publish'
  }

  if (( $#news )); then
    o svn -q add $^news@
  fi

  print -f 'Publishing results into\n'
  print -f '  %s/%s\n' $repo $slug
  print -f '  %s/%s\n' $repo:s~#*@~http://~ $slug

  o svn -q commit -m smrt
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
