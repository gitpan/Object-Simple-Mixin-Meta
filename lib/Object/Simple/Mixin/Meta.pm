package Object::Simple::Mixin::Meta;
use warnings;
use strict;

our $VERSION = '0.0102';

# get attribute options
sub meta {
    my $invocant = shift;
    my $class = ref $invocant || $invocant;
    return $Object::Simple::META->{$class} || undef;
}

=head1 NAME

Object::Simple::Mixin::Meta - Mixin to get Object::Simple meta information

=head1 VERSION

Version 0.0102

=cut

=head1 SYNOPSIS

    ### Book.pm
    package Book;
    use Object::Simple(
        mixins => ['Object::Simple::Mixin::Meta']
    );
    
    sub title  : Attr { default => 1, read_only => 1 }
    sub author : Attr { default => 2, chained => 1 }
    
    Object::Simple->build_class;
    
    ### using Book.pm
    use Book;
    
    my $book = Book->new;
    my $meta_info = $book->meta;
    
    # or
    
    my $meta_info = Book->meta;

=head1 EXPORT

meta

=head2 meta

get meta information

    my $meta_info = $book->attr_options;

meta return hash reference like this.
    
    {
        attr_options => {
            title  => {default => 1, read_only => 1},
            author => {default => 2}
        },
        mearged_attr_options => {
            ...
        }
    }

=head1 AUTHOR

Yuki Kimoto, C<< <kimoto.yuki at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-object-simple-mixin-meta at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Object-Simple-Mixin-Meta>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Object::Simple::Mixin::Meta


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Object-Simple-Mixin-Meta>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Object-Simple-Mixin-Meta>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Object-Simple-Mixin-Meta>

=item * Search CPAN

L<http://search.cpan.org/dist/Object-Simple-Mixin-Meta/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Yuki Kimoto, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Object::Simple::Mixin::Meta
