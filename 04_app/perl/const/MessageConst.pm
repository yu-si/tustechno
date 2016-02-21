#
# Message Const.
#
#
#

package const::MessageConst;


sub new {
  my $class = shift;
  my $self = {
    title => '-----Gathering and Displaying Article -----',
    subTitle => 'Display an article which you want to see.',
  };
  return bless $self, $class;
}

sub title {
  my $self = shift;
  if( @_ ){ $self->{title} = shift }
  return $self->{title};
}

sub subTitle {
  my $self = shift;
  if( @_ ){ $self->{subTitle} = shift }
  return $self->{subTitle};
}

sub title {
  return "Atricle Gatheritng"
}
1;
