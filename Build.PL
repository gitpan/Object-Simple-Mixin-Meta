use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Object::Simple::Mixin::Meta',
    license             => 'perl',
    dist_author         => 'Yuki Kimoto <kimoto.yuki@gmail.com>',
    dist_version_from   => 'lib/Object/Simple/Mixin/Meta.pm',
    build_requires => {
        'Test::More' => 0,
        'Object::Simple' => 2.0003
    },
    add_to_cleanup      => [ 'Object-Simple-Mixin-Meta-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
