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
usage: #c edit
usage: #c get <KEY>
usage: #c set <KEY> <VAL>
usage: #c show

Manipulate smrt configuration file

  Options:
    -h                Display this message
    --help            Display manual page
  Operands:
    <KEY>             Configuration key
    <VAL>             Configuration value

'

declare -gr preludedir="${SMRT_PRELUDEDIR:-@preludedir@}"

. $preludedir/smrt.prelude.zsh || exit 2

function $0:t # {{{
{
  local opt arg
  local -i i=0
  while haveopt i opt arg h help -- "$@"; do
    case $opt in
    h|help) display-help $opt ;;
    *)      reject-misuse -$arg ;;
    esac
  done; shift $i

  arg=${1-show}
  case $arg in
  edit|show) : ;;
  *) reject-misuse $1 ;;
  esac

  do-$arg $SMRT_CONFIG
} # }}}

function do-edit # {{{
{
  o ${VISUAL:-${EDITOR:-vi}} $1
} # }}}

function do-show # {{{
{
  local n p v
  for n in $config_names; do
    p=config_$n
    v=${(P)p:-}
    print -f "%s =%s\n" $n ${v:+ $v}
  done
} # }}}

. $preludedir/smrt.coda.zsh

$0:t "$@"
