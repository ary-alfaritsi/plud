#!/usr/bin/perl
#
#u_Flood.pl  by dni
#simple UDP flooder.

#use strict;
#use warnings;
use IO::Socket;

#target
$fhost='target.txt';
open(FHOST, $fhost) or die("Could not open  file.");

$count = 0; 
foreach $host (<FHOST>)  {   
    
	$host =~ s/^\s+|\s+$//g;
	
	#socks5
	$fsocks5='socks5.txt';
	open(Fsocks5, $fsocks5) or die("Could not open  file.");

	$count = 0; 
	foreach $socks5 (<Fsocks5>)  {   
		my @px = split(':',$socks5); 
		$socks5_host = $px[0];
		$socks5_port = $px[1];
		
		$socks5_host =~ s/^\s+|\s+$//g;
		$socks5_port =~ s/^\s+|\s+$//g;
		
		print("$host $socks5_host $socks5_port\n");
		
	}
	close(Fsocks5);
}
close(FHOST);

exit;
