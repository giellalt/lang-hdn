#!/bin/sh

# generate-separate-yaml-files

gawk 'BEGIN { class=""; verb=""; }
{ if(index($0,"CLASS")!=0)
    { if(class!="") print "" >> fname;
      class=$3; fname="/dev/stdout"; fname="V-"class"_gt-norm.yaml";

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
verb=$NF; gsub("\+.*","",verb);
print "  Verb - "verb" - ENGLISH : # "class >> fname;
print "" >> fname
}
if(index($0,"CLASS")==0 && NF>0)
{ printf "     %s:", $NF >> fname;
  for(i=2; i<NF; i++)
     printf " %s", $i >> fname;
  printf "\n" >> fname;
}}
END { print "" >> fname; fflush(); }'
