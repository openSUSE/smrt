# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s


function xml-xform-request-diff # {{{
{
  # this is stretching it a little...
  # it's easy to read but wasn't pleasant to write
  local -r diffs='/request/action[source/@package != "patchinfo"]/sourcediff/files/file[diff]'
  o xml sel \
    -t                                                                                  \
    --if "0 = count($diffs)"                                                            \
      -o 'empty' -n                                                                     \
    --else                                                                              \
      -m $diffs                                                                         \
      -o 'diff --bs '                                                                   \
        -v ../../old/@package -o /                                                      \
          --if '@state="added"'   -v new/@name --else -v old/@name --break              \
        -o ' '                                                                          \
        -v ../../new/@package -o /                                                      \
          --if '@state="deleted"' -v old/@name --else -v new/@name --break              \
        --nl                                                                            \
      -o '--- '                                                                         \
        --if '@state="added"' -o '/dev/null'                                            \
        --else -v ../../old/@package -o / -v old/@name                                  \
        --break                                                                         \
        --nl                                                                            \
      -o '+++ '                                                                         \
        --if '@state="deleted"' -o '/dev/null'                                          \
        --else -v ../../new/@package -o / -v new/@name                                  \
        --break                                                                         \
        --nl                                                                            \
      -v diff                                                                           \
      --break                                                                           \
    --break                                                                             \
    $1
} # }}}

function xml-ls-patchinfo # {{{
{
  xml sel -t \
    -m '/patchinfo/*[name() = "category" or name() = "rating" or name() = "packager"]' \
    -v 'name()' -o ' ' -v . --nl \
  | LC_ALL=C sort
} # }}}

function xml-ls-repos # {{{
{
  local kind=$1
  xml sel -t \
    -m '/project/repository/releasetarget[@repository="'$kind'"]' \
    -v ../@name -o ' ' -v @project \
    --nl \
  | LC_ALL=C sort
} # }}}

function xml-ls-released-binaries # {{{
{
  local pkgxml=$1 prjrepos=$2
  o xml sel -t \
    -m '//binary[@arch!="src" and @arch!="nosrc"]' \
    -v @repository \
    -o ' ' -v @arch \
    -o ' ' -v @name \
    -o ' ' -v @version \
    -o ' ' -v @release \
    -o ' ' -v @filepath \
    --nl \
    $pkgxml \
  | LC_ALL=C sort -k 1b,1 \
  | LC_ALL=C join -j 1 $prjrepos - \
  | awk '
      # strip the redundant filepath prefix, so this:
      #  SUSE:/Maintenance:/2396/SUSE_Updates_SLE-POS_11-SP3_i586/rpm/i586/xorg-x11-driver-input-7.4-13.64.1.i586.rpm
      # becomes this:
      #  rpm/i586/xorg-x11-driver-input-7.4-13.64.1.i586.rpm
      {
        rp = $1;
        fp = $NF;
        $NF = substr(fp, match(fp, rp) + length(rp) + 1);
        print;
      }
    '
} # }}}

function xml-ls-released-sources # {{{
{
  local pkgxml=$1 prjrepos=$2
  o xml sel -t \
    -m '//binary[@arch="src" or @arch="nosrc"]' \
    -v @repository \
    -o ' ' -v @name \
    -o ' ' -v @version \
    -o ' ' -v @release \
    --nl \
    $pkgxml \
  | LC_ALL=C sort -k 1b,1 \
  | LC_ALL=C join -j 1 -o 2.1,2.2,2.3,2.4 $prjrepos -
} # }}}

function xml-get-maintainers # {{{
{
  local file=$1
  local -a line
  reply=()

  o xml sel -t \
    -m '//owner/*[name() = "group" or name() = "person"]' \
    -v 'name()' -o ' ' -v @name \
    --nl \
    $file \
  | while read -A line; do
      reply+=($line)
    done
} # }}}

function xml-get-group-members # {{{
{
  local file=$1 REPLY
  reply=()

  o xml sel -t \
    -m /group/person/person \
    -v @userid \
    --nl \
    $file \
  | while read; do
      reply+=($REPLY)
    done
} # }}}

function xml-get-email # {{{
{
  local file=$1 kind=${${1:t}%%-*} REPLY
  reply=()

  o xml sel -t \
    -v /$kind/email \
    --nl \
    $file \
  | while read; do
      reply+=($REPLY)
    done
} # }}}

function xml-ls-bugs # {{{
{
  local pinfo=$1
  o xml sel -t \
    -m '/patchinfo/issue[@tracker="bnc"]' \
    -v @tracker \
    -v @id \
    -o ' ' \
    -v . \
    --nl \
    $pinfo \
  | xml unesc \
  | LC_ALL=C sort -k 1b,1
  # `xml unesc` because `xml sel` leaves even the predefined
  # entities such as &gt;, &lt; or &amp; unexpanded
} # }}}
