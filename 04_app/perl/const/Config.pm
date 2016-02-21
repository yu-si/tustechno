#
# Config
#
#
#

package const::Config;
use utf8;


sub new {
  my $class = shift;
  my $self = {
    baseDir => ".",
    outputDir => 'output'
  };
  return bless $self, $class;
}

sub baseDir {
  my $self = shift;
  if( @_ ){ $self->{baseDir} = shift }
  return $self->{baseDir};
}

sub outputDir {
  my $self = shift;
  if( @_ ){ $self->{outputDir} = shift }
  return $self->{outputDir};
}
1;
