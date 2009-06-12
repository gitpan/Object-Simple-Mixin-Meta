#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Object::Simple::Mixin::Meta' );
}

diag( "Testing Object::Simple::Mixin::Meta $Object::Simple::Mixin::Meta::VERSION, Perl $], $^X" );
