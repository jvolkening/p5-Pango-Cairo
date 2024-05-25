package Pango::Cairo;

our $VERSION = "0.001";
$VERSION = eval $VERSION;

=encoding utf8

=head1 NAME

PangoCairo - Bindings to the PangoCairo library

=head1 SYNOPSIS

=cut

use strict;
use warnings;
use Carp qw/croak/;
use Cwd qw/abs_path/;
#use File::ShareDir;
use Exporter;
use Glib::Object::Introspection;

our @ISA = qw(Exporter);

my $_PANGOCAIRO_BASENAME = 'PangoCairo';
my $_PANGOCAIRO_VERSION  = '1.0';
my $_PANGOCAIRO_PACKAGE  = 'Pango::Cairo';

# - Wiring ------------------------------------------------------------------ #

sub import {

  Glib::Object::Introspection->setup (
    #search_path => File::ShareDir::dist_dir('Pango-Cairo'),
    basename    => $_PANGOCAIRO_BASENAME,
    version     => $_PANGOCAIRO_VERSION,
    package     => $_PANGOCAIRO_PACKAGE,
  );

  # call into Exporter for the unrecognized arguments; handles exporting and
  # version checking
  Pango::Cairo->export_to_level (1, @_);

}

# - Overrides --------------------------------------------------------------- #

1;

__END__

=head1 SEE ALSO

=over

=item * L<Glib>

=item * L<Glib::Object::Introspection>

=back

=head1 AUTHORS

=over

=item Jeremy Volkening <volkening@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2024 by Jeremy Volkening

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
