use Person;

$object = new Person();
$x = `cat tmp_ifdesc` ;
#print "$x";
@x_desc = split /\n/, $x ;
foreach (@x_desc) {$i=$_;$object->push_id_desc($i);}

$x = `cat tmp_ifoper` ;
@x_desc = split /\n/, $x ;
foreach (@x_desc) {$i=$_; $object->push_id_status($i);}
$object->set_host("my host");
$object->set_community("XXFFRGTHRRR");
$object->print_info();
#foreach (@x_desc) {print "$_\n";}

#foreach @x_desc {print " $_ ";}

