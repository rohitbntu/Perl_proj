#!/usr/bin/perl

package Person;

%id_desc = ();
$host_name = "";
$community = undef;

sub new
{

    my $class = shift;
    my $self = {
    };
    bless $self, $class;
    return $self;
}
sub push_id_desc()
{
my $x=$_[1];
print "$x-----$#_--";
$id=$x;
$desc=$x;
$id =~ s/=.*//g ;
$id =~ s/.*\.//g ;
$id =~ s/\s//g ;
$desc =~ s/.*=//g ;
$desc =~ s/STRING://g ;
$desc =~ s/\s//g ;
#print "$id $desc ";
$id_desc{$id}=$desc;
#print $id;
}

sub print_info()
{
$xtmp=`cat tmpx` ;
#for my $x (sort keys %id_desc) {print "$x - > $id_desc{$x} \n";}
for my $x (sort keys %id_status) {
if ($id_status{$x} eq "up")

{
$xtmp=`cat tmpx` ;
$xtmp =~ s/INT/$id_desc{$x}/g ;
if ($host_name) {$xtmp =~ s/HOST/$host_name/g ;}
if ($community) {$xtmp =~ s/COMMUNITY/$community/g ;}
print "#####################$x - > $id_status{$x} -> $id_desc{$x} \n$xtmp \n######============End==========\n";
}

}
}


sub push_id_status()
{
my $x=$_[1];
$id=$x;
$status=$x;
$id =~ s/=.*//g ;
$id =~ s/.*\.//g ;
$id =~ s/\s//g ;
$status =~ s/.*=//g ;
$status =~ s/INTEGER://g ;
$status =~ s/\s//g ;
$status =~ s/\(.*//g ;
#print "$id $desc ";
$id_status{$id}=$status ;
#print $id;
}

sub set_host(){

$host_name = $_[1];
}

sub set_community() {
shift @_;
$community = shift @_ ;
}



1;

