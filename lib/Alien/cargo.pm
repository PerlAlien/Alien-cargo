package Alien::cargo;

use strict;
use warnings;
use 5.008004;
use File::Which qw( which );
use Capture::Tiny qw( capture );
use Env qw( @PATH $RUSTUP_HOME );
use base qw( Alien::Base );

# ABSTRACT: Find or download the cargo command (build system and package manager for Rust)
# VERSION

=head1 SYNOPSIS

=head1 DESCRIPTION

=cut

our %config;

if( which 'cargo' ) {
  my($text, $stderr) = capture { system 'cargo', 'version' };
  if($text =~ /^cargo ([0-9\.]+)/) {
    %config = (
      version      => $1,
      install_type => 'system',
      bin_dir      => [],
    );
  }
}

unless(%config) {
  require Alien::Rust;
  $RUSTUP_HOME = Alien::Rust->rustup_home if Alien::Rust->needs_rustup_home;
  %config = (
    version      => Alien::Rust->version,
    install_type => Alien::Rust->install_type,
    bin_dir      => [Alien::Rust->bin_dir],
  );
}

# these are for compatability with Alien::Base and not documented
sub new          { return bless {}, $_[0] }
sub cflags       { '' }
sub libs         { '' }
sub dynamic_libs { () }

=head1 METHODS

=head2 bin_dir

 my @dir = Alien::cargo->bin_dir;

=head2 version

 my $version = Alien::cargo->version;

=head2 install_type

 my $install_type = Alien::cargo->install_type;
 my $bool = Alien::cargo->install_type($install_type);

=cut

sub bin_dir { @{ $config{bin_dir } } }
sub version { $config{version} }
sub install_type {
  my $self = shift;
  my $type = $config{install_type};
  return @_ ? $type eq $_[0] : $type;
}

1;
