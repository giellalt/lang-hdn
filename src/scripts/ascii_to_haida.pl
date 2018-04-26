#!/usr/bin/perl -w

use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

# Script for changing ascii Haida to official Haida

while (<>) 
{

s/ç/g̲/g ;
s/Ñ/K̲/g ;
s/Ç/G̲/g ;
s/Ý/X̲/g ;
s/ñ/ḵ/g ;
s/ç/ɢ̲/g ;
s/ý/x̲/g ;
s/’/'/g ;


print ;
}

#print "\n"


# sed 's/ñ/ḵ/g ; ' |  sed 's/ç/ɢ̲/g ; ' | sed 's/ý/x̲/g ; '

