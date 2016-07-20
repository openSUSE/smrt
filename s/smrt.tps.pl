# vim: ft=perl sw=2 sts=2 et fdm=marker cms=\ #\ %s

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
