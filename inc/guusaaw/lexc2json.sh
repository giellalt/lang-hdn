#!/bin/sh

# Usage: lexc2json.sh 1: normative HFSTOL analyzer 2: path to LEXC file
# lexc2json.sh src/analyser-gt-norm.hfstol src/fst/stems/verbs.lexc| less

cat $2 |

gawk 'index($0,";")!=0 && match($0,"^!")==0 && match($0,"^ ")==0 { sub(":.*","",$0); sub(" CLASS.*$","",$0); gsub("% "," ",$0); gsub("%\\.",".",$0); if($0!="") print $0; }' | # less; exit 0;

grep -v 'CL/' | # less; exit 0;

hfst-optimized-lookup -q $1 |

gawk 'BEGIN { FS="\n"; RS=""; } { if(index($0,"+?")==0) print $0; }' | # less; exit 0;

egrep -v '(INS)|(CLSF)|(NUMBER)|(QUANT)|(UNIT)' | # less; exit 0;

gawk -F"\t" '{ if(index($2,"+V+Sg+Impv")!=0) print $1; }' | sort -u | # less; exit 0;

gawk -v LEXC=$2 'BEGIN { lexc=LEXC;
while((getline < lexc)!=0)
{ gsub("% "," "); match($0,"^([^:]+)(.*) CLASS-([^ ]+).*+\"([^\"]+)\"",f);
  sub("^:","",f[2]);
  if(f[2]!="")
    hdnstem[f[1]]=f[2];
  else
    hdnstem[f[1]]=f[1];
  hdnclass[f[1]]=f[3];
  hdneng[f[1]]=f[4];
  slug=f[1]; gsub(" ","_",slug);;
  hdnslug[f[1]]=slug;}
  printf "[\n";
}
{ if(hdneng[$0]!="")
    { printf "  {\n";
      printf "    \"analysis\": [[], \"%s\", [\"+V\", \"+Sg\", \"+Impv\"]],\n", $0;
      printf "    \"head\": \"%s\",\n", $0;
      printf "    \"linguistInfo\": { \"stem\": \"%s- (%s)\" },\n", hdnstem[$0], hdnclass[$0];
      printf "    \"paradigm\": \"V\",\n";
      printf "    \"senses\": [{ \"definition\": \"%s\", \"source\": [\"HD\"] }],\n", hdneng[$0];
      printf "    \"slug\": \"%s\",\n", hdnslug[$0];
      printf "  }, \n\n";
    }
}
END { printf "]\n"; }'

