#!/usr/bin/env perl

use strict ;
use warnings ;

#<a class="green" href="https://doi.org/10.5281/zenodo.5797249">Responses (velocity seismometer) <img style="vertical-align: middle;" src="fig/zenodo.svg" alt="stp-iris.pl (github)" width="80"></a>

#<a class="green" href="https://doi.org/10.5281/zenodo.5797249">Responses (velocity seismometer) 
#<img style="vertical-align: middle;" src="fig/zenodo.svg" alt="stp-iris.pl (github)" width="80"></a>

#Export the bio from Zotero as a format of AGU in HTML and paste it
my $html = qq |Heo, D., Kang, T.-S., Kim, M., Ahn, B. S., Lim, H., Han, J., et al. (2024). New insights on seismic activity in the southeastern Korean Peninsula from the Gyeongju Hi-density Broadband Seismic Network (GHBSN). <i>Geosciences Journal</i>, <i>28</i>(3), 319–333. <a href="https://doi.org/10.1007/s12303-024-0003-7">https://doi.org/10.1007/s12303-024-0003-7</a>| ;

#my $link = "papers/Lim_etal_2024_JS.pdf" ;
#my $link = "Lim_etal_2024_JS_suppl.docs" ;
my $link = "papers/Heo_etal_2024_GJ.pdf" ;

my $img = "icones/01.pdf/pdf01.svg" ;
#my $img = "icones/02.supp/supp01.svg" ;

#my $alt = "Lim_etal_2024" ;
my $alt = "Heo_etal_2024" ;

my $width = "35" ;

#print "$link\n" ;

$html =~ s|(Lim, H\.)|<b><u>$1</u></b>| ;
$html =~ s|a href=|a class="green" href=| ;

my $out ;

$out .= $html ;

$out .= &attach("papers/Heo_etal_2024_GJ.pdf","icones/01.pdf/pdf01.svg") ;

$out  = "<li>" . $out . "</li>" ;

print "$out\n" ;

sub attach {
	my ($link,$img)=@_ ;
	my $output ;
	#my $link = "papers/Heo_etal_2024_GJ.pdf" ;
	$output .= qq|<a href="$link">| ;
	#my $img = "icones/01.pdf/pdf01.svg" ;
	$output .= qq|<img style="vertical-align: middle;" src="$img" alt="$alt" width="$width"></a>| ;
	return $output ;
}
