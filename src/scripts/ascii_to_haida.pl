#!/usr/bin/perl -w

use feature 'unicode_strings' ;

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

