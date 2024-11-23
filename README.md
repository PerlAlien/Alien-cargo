# Alien::cargo ![static](https://github.com/PerlAlien/Alien-cargo/workflows/static/badge.svg) ![linux](https://github.com/PerlAlien/Alien-cargo/workflows/linux/badge.svg)

Find or download the cargo command (build system and package manager for Rust)

# SYNOPSIS

# DESCRIPTION

# METHODS

## bin\_dir

```perl
my @dir = Alien::cargo->bin_dir;
```

## version

```perl
my $version = Alien::cargo->version;
```

## install\_type

```perl
my $install_type = Alien::cargo->install_type;
my $bool = Alien::cargo->install_type($install_type);
```

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
