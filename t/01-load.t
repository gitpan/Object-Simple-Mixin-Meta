use Test::More 'no_plan';

BEGIN {
	use_ok( 'Object::Simple::Mixin::Meta', 'meta' );
	ok( exists &meta, 'import attr_options' );
}
