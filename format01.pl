#!/usr/bin/env perl

use strict ;
use warnings ;

my $fname = "conference01.txt" ;

#Lim, H., M. Kim, Kim, Y.H. (2023). Preliminary results of analysis on the receiver functions using the linear geophone array across the fault system in the southeastern region of South Korea. 2023 Fall Meeting, AGU, San Francisco, Calif., 12–16 Dec. 2023.
#->
#	<li>Han, S., Kim, W.-Y., <b><u>Lim, H.</u></b>, Son, Y. O., Seo, M.-S., Park, J. Y., &amp; Kim, Y. (2024). Resolving Multi-Stage Rupture Process of the 2021 Mw 4.9 Offshore Jeju Island Earthquake From Relative Source Time Functions. <i>Geophysical Research Letters</i>, <i>51</i>(3), e2023GL106059. <a class="green" href="https://doi.org/10.1029/2023GL106059">https://doi.org/10.1029/2023GL106059</a></li>

open(my $f,"<$fname") ;
while(my $l=<$f>){
	chomp($l) ;
	$l =~ s|Lim,? H\.|<b><u>Lim, H.</u></b>| ;
	$l =~ s|&|&amp;|g ;
	$l = "<li>" . $l . "</li>" ;
	print "$l\n" ;
}
close($f) ;
