#============================================================= -*-Perl-*-
#
# Pod::POM::Node::Code
#
# DESCRIPTION
#   Module implementing specific nodes in a Pod::POM, subclassed from
#   Pod::POM::Node.
#
# AUTHOR
#   Andy Wardley   <abw@kfs.org>
#   Andrew Ford    <a.ford@ford-mason.co.uk>
#
# COPYRIGHT
#   Copyright (C) 2000, 2001 Andy Wardley.  All Rights Reserved.
#   Copyright (C) 2009 Andrew Ford.  All Rights Reserved.
#
#   This module is free software; you can redistribute it and/or
#   modify it under the same terms as Perl itself.
#
# REVISION
#   $Id: Code.pm 89 2013-05-30 07:41:52Z ford $
#
#========================================================================

package Pod::POM::Node::Code;

require 5.006;
use strict;
use warnings;

use parent qw( Pod::POM::Node );

our @ATTRIBS = ( text => '' );

sub present {
    my ($self, $view) = @_;
    $view ||= $Pod::POM::DEFAULT_VIEW;
    return $view->view_code($self->{ text });
}

1;

=head1 NAME

Pod::POM::Node::Code -

=head1 SYNOPSIS

=head1 DESCRIPTION

This module implements a specialization of the node class to represent code elements.

=head1 AUTHOR

Andrew Ford E<lt>a.ford@ford-mason.co.ukE<gt>

Andy Wardley E<lt>abw@kfs.orgE<gt>

=head1 COPYRIGHT

Copyright (C) 2000, 2001 Andy Wardley.  All Rights Reserved.

Copyright (C) 2009 Andrew Ford.  All Rights Reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

Consult L<Pod::POM::Node> for a discussion of nodes.
