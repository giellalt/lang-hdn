#!/bin/sh

# cat src/morphology/lexicon.tmp.lexc | flookup -x -w "" diacritic-unify.foma | less

TOTAL=0

echo "Unififying diacritics in $1 lexc files in: $GTLANG_hdn" 

if [ $1 == "stems" -o $1 == "all" ]
then
for LEXC in $GTLANG_hdn/src/morphology/stems/*.lexc
do
   cat $LEXC | flookup -x -w "" $GTLANG_hdn/inc/hdn-diacritic-unify.fst > $LEXC.cleansed
   DIFF=`diff $LEXC $LEXC.cleansed | grep '<' | wc -l`
   echo "$DIFF\t$LEXC"
   TOTAL=`expr $TOTAL + $DIFF`
   mv $LEXC.cleansed $LEXC
done
fi

if [ $1 == "affixes" -o $1 == "all" ]
then
for LEXC in $GTLANG_hdn/src/morphology/affixes/*.lexc
do
   cat $LEXC | flookup -x -w "" $GTLANG_hdn/inc/hdn-diacritic-unify.fst > $LEXC.cleansed
   DIFF=`diff $LEXC $LEXC.cleansed | grep '<' | wc -l`
   echo "$DIFF\t$LEXC"
   TOTAL=`expr $TOTAL + $DIFF`
   mv $LEXC.cleansed $LEXC
done
fi

echo "$TOTAL\tALL";

