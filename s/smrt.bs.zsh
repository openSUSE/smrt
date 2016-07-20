# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

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
