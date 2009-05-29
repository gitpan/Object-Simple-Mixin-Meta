use Test::More 'no_plan';
use strict;
use warnings;

use lib 't/02-core';

use T1;
{
    my $t = T1->new;
    my $meta_info = $t->meta;
    
    is_deeply(
        $meta_info->{attr_options},
        {
            m1 => { default => 'm1', read_only => 1 },
            m2 => { default => 'm2' },
        },
        'meta info from object'
    );
    
    is_deeply(
        T1->meta->{attr_options},
        {
            m1 => { default => 'm1', read_only => 1 },
            m2 => { default => 'm2' },
        },
        'meta info form class'        
    );
}
