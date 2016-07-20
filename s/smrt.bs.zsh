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

function bs-fetch-packages # {{{
{
  local mprj=$1
  o bsc -d "match=project='$mprj'&limit=0" /search/published/binary/id
} # }}}

function bs-fetch-patchinfo # {{{
{
  local mprj=$1
  o bsc /source/$mprj/patchinfo/_patchinfo
} # }}}

function bs-fetch-project # {{{
{
  local mprj=$1
  o bsc /source/$mprj/_meta
} # }}}

function bs-fetch-repos # {{{
{
  local mprj=$1
  o bsc /build/$mprj/_result
} # }}}

function bs-fetch-request # {{{
{
  local mrid=$1
  o bsc /request/$mrid
} # }}}

function bs-fetch-request-diff # {{{
{
  local mrid=$1
  o bsc -d "cmd=diff&view=xml" /request/$mrid
} # }}}

function bs-fetch-maintainers # {{{
{
  local pkg=$1
  o bsc -d "filter=bugowner&binary=$pkg" /search/owner
} # }}}

function bs-fetch-info # {{{
{
  local kind=$1 name=$2
  o bsc /$kind/$name
} # }}}
