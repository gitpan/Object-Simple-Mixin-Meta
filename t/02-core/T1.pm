package T1;
use Object::Simple(mixins => ['Object::Simple::Mixin::Meta']);

sub m1 : Attr {default => 'm1', read_only => 1}
sub m2 : Attr {default => 'm2' }

Object::Simple->end;
