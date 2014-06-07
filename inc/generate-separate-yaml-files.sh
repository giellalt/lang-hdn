#!/bin/sh

# generate-separate-yaml-files

gawk '{ if(index($0,"LEXICON")!=0)
          { gsub("[ ]+","\t",$0); print; }
        else
          { gsub("[ ][ ]+","\t",$0); print; }
}' |

gawk 'BEGIN { FS="\t"; class=""; verb=""; }
{ if(index($0,"CLASS")!=0)
    { if(class!="") print "" >> fname;
      class=$3; # fname="/dev/stdout";
      fname="V-"class"_gt-norm.yaml";

print "Config:" > fname;
print "  hfst:" >> fname;
print "    Gen: ../../../src/generator-gt-norm.hfst" >> fname;
print "    Morph: ../../../src/analyser-gt-norm.hfst" >> fname;
print "  xerox:" >> fname;
print "    Gen: ../../../src/generator-gt-norm.xfst" >> fname;
print "    Morph: ../../../src/analyser-gt-norm.xfst" >> fname;
print "    App: lookup" >> fname;
print "" >> fname;
print "Tests:" >> fname;
print "" >> fname;
getline; getline;
verb=$2; gsub("\\+.*","",verb);
print "  Verb - "verb" - ENGLISH : # "class >> fname;
print "" >> fname
}
if(index($0,"CLASS")==0 && NF>0)
{ printf "     %s%s\n", $2, $1 >> fname;
}}
END { print "" >> fname; fflush(); }'
