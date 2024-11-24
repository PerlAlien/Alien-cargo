# Alien::cargo ![static](https://github.com/PerlAlien/Alien-cargo/workflows/static/badge.svg) ![linux](https://github.com/PerlAlien/Alien-cargo/workflows/linux/badge.svg)

Find or download the cargo command (build system and package manager for Rust)

# SYNOPSIS

```perl
use Alien::cargo;
use Env qw( @PATH );

unshift @PATH, Alien::cargo->bind_dir;
```

# DESCRIPTION

This [Alien](https://metacpan.org/pod/Alien) provides the Rust [Cargo](https://doc.rust-lang.org/cargo/) command.

# METHODS

## bin\_dir

```perl
my @dir = Alien::cargo->bin_dir;
```

Provides the list of directories (if any) that are needed to add to the
`PATH` in order to run `cargo`.

## version

```perl
my $version = Alien::cargo->version;
```

Returns the version of `cargo`.

## install\_type

```perl
my $install_type = Alien::cargo->install_type;
my $bool = Alien::cargo->install_type($install_type);
```

Returns the install type.

# SEE ALSO

- [Alien::Rust](https://metacpan.org/pod/Alien::Rust)
- [Alien::cargo::clone](https://metacpan.org/pod/Alien::cargo::clone)
- [FFI::Build::File::Cargo](https://metacpan.org/pod/FFI::Build::File::Cargo)>

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
