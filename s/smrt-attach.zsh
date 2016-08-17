#!/usr/bin/zsh -f
# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

# Copyright (C) 2016 SUSE LLC
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

declare -gr cmdname=${SMRT_CMDNAME-$0:t}

declare -gr cmdhelp='

usage: #c -h|--help|<HOST> <PRODUCT>...
Ssh into a refhost and earmark it for testing given products
  Options:
    -h                Display this message
    --help            Display manual page
  Operands:
    <HOST>            [<USER>@]<HOSTSPEC>
    <PRODUCT>         <PRODNAME>:<PRODVER>

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
    h|help) display-help $opt ;;
    ?)      reject-misuse -$arg ;;
    esac
  done; shift $i

  (( $# > 1 )) || reject-misuse

  check-preconditions $0

  impl "$@"
} # }}}

function impl # {{{
{
  local h=$1 ctlpath=$PWD/.ssh/%r@%h:%p
  shift
  mkdir -p $ctlpath:h .connected
  print -f 'Connecting to %s for %s\n' $h "$*"
  o ssh -qMNf -o ControlPath=$ctlpath $h
  o redir -1 .connected/$h print -f '%s\n' -- "$@"
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
