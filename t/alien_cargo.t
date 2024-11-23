use Test2::V0 -no_srand => 1;
use Alien::cargo;
use Env qw( @PATH );
use Capture::Tiny qw( capture );

push @PATH, Alien::cargo->bin_dir;

my($out, $err, $exit) = capture { system 'cargo', 'version' };

is $exit, 0, 'command returns success';
ok $out =~ /^cargo ([0-9\.]+)/, 'expected output';
is(Alien::cargo->version, $1, 'version matches');

note '';
note '';
note '';

note "version = @{[ Alien::cargo->version ]}";
note "output  = @{[ $out ]}";

note '';
note '';

done_testing;


