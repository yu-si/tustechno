#
# Directory Creater.
#
#
#

package service::DirectoryCreater;
use utf8;
use open ":utf8";
use File::Path;

sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub create {
  my ($this, $dir) = @_;
  mkpath [$dir] or warn $!;
}
1;
