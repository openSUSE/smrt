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

usage: #c -h|<CMD> <ID>
Download XML data for a maintenance request from the BuildService
  Options:
    -h                Display this message

  Operands:
    packages          Download packages.xml data
    patchinfo         Download patchinfo.xml data
    project           Download project.xml data
    repos             Download repositories.xml data
    request           Download request.xml data
    request-diff      Download request.diff.xml data
    <MPRJ>            <ISSUER>:Maintenance:<ISSUE>
    <MRID>            Maintenance request <MRID>
    <SLUG>            <MPRJ>:<MRID>

  Most subcommands accept either <SLUG> or <MPRJ>.
  `request`, `request-diff` accept <SLUG> or <MRID>.
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
    $~PATTERN_SLUG)
      arg=${arg%:*}
    ;&
    $~PATTERN_MPRJ)
      : ${SMRT_ISSUER:=${arg%%:*}}
    ;;
    *) reject-misuse $arg ;;
    esac
  ;;
  request|request-diff)
    case $arg in
    $~PATTERN_SLUG)
      : ${SMRT_ISSUER:=${arg%%:*}}
      arg=${arg##*:}
    ;;
    $~PATTERN_MRID)
      : ${SMRT_ISSUER:=$config_assumed_issuer}
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
