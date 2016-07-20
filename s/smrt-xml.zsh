#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|bugs|email|maintainers|release|repos
Display information gleaned from BuildService XML data
  Options:
    -h                Display this message

  Operands:
    bugs              List referenced bugs
    diff              Display unified diff
    email             Display email address of a maintainer
    maintainers       List maintainer usernames
    release           List released packages
    repos             List targeted repositories
'

declare -gr preludedir="${SMRT_PRELUDEDIR:-@preludedir@}"

. $preludedir/smrt.prelude.zsh || exit 2

. $preludedir/smrt.xml.zsh

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
    bugs        \
  | diff        \
  | email       \
  | maintainers \
  | release     \
  | repos       )
    :
  ;;
  *) reject-misuse $arg ;;
  esac
  shift

  check-preconditions $0

  do-$arg "$@"
} # }}}

function do-diff # {{{
{
  o xml-xform-request-diff "$@"
} # }}}

function do-email # {{{
{
  local -a reply
  o xml-get-email "$@"
  o print -rf '%s\n' -- $reply
} # }}}

function do-maintainers # {{{
{
  local -a reply
  o xml-get-maintainers "$@"
  o print -rf '%s %s\n' -- $reply
} # }}}

function do-bugs # {{{
{
  o xml-ls-bugs "$@"
} # }}}

function do-repos # {{{
{
  local arg=$1 inf=$2 kind
  case $arg in
  -s) kind=standard ;;
  -u) kind=update ;;
  *) reject-misuse $arg ;;
  esac
  o redir -0 $inf xml-ls-repos $kind
} # }}}

function do-release # {{{
{
  local arg=$1 inf=$2 kind
  case $arg in
  -b) kind=binaries ;;
  -s) kind=sources ;;
  *) reject-misuse $arg ;;
  esac
  o xml-ls-released-$kind $inf ${inf:h}/repos-$kind
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
