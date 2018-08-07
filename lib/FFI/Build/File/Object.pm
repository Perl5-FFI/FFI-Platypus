package FFI::Build::File::Object;

use strict;
use warnings;
use 5.008001;
use base qw( FFI::Build::File::Base );
use constant default_encoding => ':raw';
use Carp ();

# ABSTRACT: Class to track object file in FFI::Build
# VERSION

sub default_suffix
{
  shift->platform->object_suffix;
}

sub build_item
{
  my($self) = @_;
  unless(-f $self->path)
  {
    Carp::croak "File not built"
  }
  return;
}

1;
