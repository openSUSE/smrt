# vim: ft=perl sw=2 sts=2 et fdm=marker cms=\ #\ %s

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

use strict;
use warnings;

use vars qw(%productdefs);

my %keymap = ();
my @okeys = qw(major minor class base archs);
my @lists = qw(archs base);

my $pdpm = $ARGV[0] or die "usage: $0 INPUTFILE\n";
do $pdpm or die "unable to read product definitions ($pdpm): $!\n";

open(my $ofd, '>&', STDOUT) or die "$!\n";

foreach my $pn (sort keys %productdefs) {
  my %pd = %{$productdefs{$pn}};
  printf $ofd ': name="%s"', $pn =~ tr/ /:/r;
  foreach my $out (@okeys) {
    my $in = defined $keymap{$out} ? $keymap{$out} : $out;
    my $val = undef;
    next unless defined $pd{$in};
    if (grep{$_ eq $in} @lists) {
      $val = join(' ', map tr/ /:/r, sort @{$pd{$in}});
    } else {
      $val = $pd{$in};
    }
    if ($val) {
      printf $ofd ' %s="%s"', $out, $val;
    }
  }
  printf $ofd "\n"
};

close($ofd);
