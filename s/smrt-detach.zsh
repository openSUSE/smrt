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

usage: #c -h|--help
usage: #c [HOST...]

Disconnect attached refhost(s)

  Options:
    -h                Display this message
    --help            Display manual page
  Operands:
    HOST              [USER@]HOSTSPEC

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

  (( $# )) || reject-misuse

  check-preconditions $0

  impl "$@"
} # }}}

function impl # {{{
{
  local h= ctlpath=$PWD/.ssh/%r@%h:%p
  :; (( $# )) \
  || set -- .connected/*(:t)
  for h in "$@"; do
    :; [[ -e .connected/$h ]] \
    || complain 1 "No earmark file for $h"
    :; o ssh -qo ControlPath=$ctlpath -O check $h \
    || complain 1 "No connection to $h"
  done
  for h in "$@"; do
    print -f 'Disconnecting from %s\n' $h
    o ssh -qo ControlPath=$ctlpath -O exit $h
    o rm .connected/$h
  done
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
