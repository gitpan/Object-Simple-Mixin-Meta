#!perl -T

use Test::More tests => 2;

BEGIN {
	use_ok( 'Object::Simple::Mixin::Meta' );
	ok( exists &meta, 'import attr_options' );
}

diag( "Testing Object::Simple::Mixin::Meta $Object::Simple::Mixin::Meta::VERSION, Perl $], $^X" );
