#!/usr/bin/env perl

use strict ;
use warnings ;

#<a class="green" href="https://doi.org/10.5281/zenodo.5797249">Responses (velocity seismometer) <img style="vertical-align: middle;" src="fig/zenodo.svg" alt="stp-iris.pl (github)" width="80"></a>

#<a class="green" href="https://doi.org/10.5281/zenodo.5797249">Responses (velocity seismometer) 
#<img style="vertical-align: middle;" src="fig/zenodo.svg" alt="stp-iris.pl (github)" width="80"></a>

#my $link = qq|"https://doi.org/10.5281/zenodo.5797249"| ;
#my $link = "papers/Lim et al. - 2024 - The 2022 Goesan earthquake of the moment magnitude.pdf" ;
#my $link = "papers/Lim_etal_2024_JS.pdf" ;
my $link = "Lim_etal_2024_JS_suppl.docs" ;

#my $img = "icones/01.pdf/pdf01.svg" ;
my $img = "icones/02.supp/supp01.svg" ;

my $alt = "Lim_etal_2024" ;

my $width = "35" ;

#print "$link\n" ;

my $out ;

$out .= qq|<a href="$link">| ;
$out .= qq|<img style="vertical-align: middle;" src="$img" alt="$alt" width="$width"></a>| ;

print "$out\n" ;
