


















* Sets for POS sub-categories





* Sets for Semantic tags





* Sets for Morphosyntactic properties






































































































































































* Sets for verbs


- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.



* The set COPULAS is for predicative constructions







* NP sets defined according to their morphosyntactic features







* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.












The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")






* Miscellaneous sets





















* Border sets and their complements













* Syntactic sets




These were the set types.



## HABITIVE MAPPING


* **hab1** 


* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.



* **habNomLeft** 


* **hab4** 	



* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB



* **habDain** (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right




* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial










































































* **spred<obj** (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.


* **Hab<spred** (@<SPRED) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.

* **Hab>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* **Nom>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* **<spred** (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas. 

* **<spred** (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word


* **<spredQst1** (<ext> @<SUBJ) for Nom in a typically question sentence; if A) Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. B) same as a, only the Qst-pcle is attached to copulas. C) Qst to the left, with copulas to its left, but not if two Nom:s are found somewhere to the right. D) copulas to the left, and BOS to the left. E) Loc or Ill to the left, and Loc or Hab to the left of this, Qst and copulas to the left. F) Num @>N to the left, Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. NOTE) for all these rules; human, Loc or Sem/Plc not allowed to the right.

* **<spredQst2** (@<SPRED) for Nom; in a typically question sentence; differs from <spredQst1 by not beeing as restricted to the right. Though you are not allowed to be Pers or human.

* **Nom<spredQst** (@<SPRED) for Nom; in a typically question sentence. Differs from <spredQst2 by letting Nom be found between SPRED and copulas



* **<spred** (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* **<spredVeara** (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* **leftCop<spred** (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left. 

* **<spredLocEXPERIMENT** (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor


* **NumTime** (@<SPRED) for A Nom

* **<spredSg** (@<SPRED) for Sg Nom	

* **<spredPg** (@<SPRED) for Pl Nom	

* **<spred** (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* **<spred** (@<SPRED) for N Ess

* **spredEss>** (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* **HABSpredSg>** (@SPRED>) for Nom; if habitive first one to the left, followed by copulas.

* **GalleSpred>** (@SPRED>) for Num Nom; if sentence initial

* **spredSgMII>** (@SPRED>)

* **r492>** (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.



* **AdjSpredSg>** (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas

* **SpredSg>Hab** (@SPRED>) for Nom; if you are sentence initial, copulas is located to the right, and there is a habitive to the right of copulas



* **Spred>SubjInf** (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* **spredCoord** (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.






* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Du** (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right. 
* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives


* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).




















* **f<advl** (@-F<ADVL) for infinite adverbials

* **f<advl** (@-F<ADVL) for infinite adverbials



* **s-boundary=advl>** (@ADVL>) for ADVL that resemble s-booundaries. Mainverb to the right.




* **-fobj>** (@-FOBJ>) for Acc 

* **-fobj>** (@-FOBJ>) for Acc




* **advl>mainV** (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.


* **<advl** (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.




* **<advlPoPr** (@<ADVL) if mainverb to the left.
* **advlPoPr>** (@<ADVL) if mainverb to the right.



* **advlEss>** (@<ADVL) for weather and time Ess, if FMAINV to the left.






* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.



* **advlBOS>** (@ADVL>) if; you are N Ill and found sentnece initially. First one to your right is a clause.


* **<advlPoEOS** (@<ADVL) for Po; if you are found at the very end of a sentence. A mainverb is needed to the right though.



* **cleanupILL<advl** (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.











* **<opredAAcc** (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.


### sma object









* **<advlEss** (@<ADVL) for ESS-ADVL if; FMAINV to the left
* **<spredEss** (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat





## SUBJ MAPPING - leftovers

## OBJ MAPPING - leftovers


## HNOUN MAPPING
















* * *
<small>This (part of) documentation was generated from [../src/cg3/functions.cg3](http://github.com/giellalt/lang-hdn/blob/main/../src/cg3/functions.cg3)</small>

Demo from Summer 2015
chíin+CL/Human+CL/dla:chíin Common "fish" ;

gatáadaan+CL/Shape+CL/hlga:gatáadaan Common "table" ;
gwáahl+CL/Shape+CL/cha:gwáahl Common "bag" ;
dúus+CL/Human+CL/dla:dúus2 Common "cat" ;
k̲úng+CL/Shape+CL/k̲ʼíi:k̲ú2ng Common "moon";
tʼáangal+Sem/BodyPart:tʼáangal Body_Part "tongue" ;
x̲áng+Sem/BodyPart:x̲áng Body_Part "eye" ;
aw+CL/Human+CL/dla+Sem/Kinterm:aw Kinterm "mother, motherʼs sister" ;
náan+CL/Human+CL/dla+Sem/Kinterm:náan Kinterm "grandmother" ;
juuyáay+CL/Shape+CL/k̲ʼíi+Dial/NOT-M:juuyáay Indec "sun" ;
juuyáay+CL/Shape+CL/k̲ʼíi+Dial/NOT-A:juuyée Indec "sun" ;





* * *
<small>This (part of) documentation was generated from [../src/fst/stems/nouns.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/nouns.lexc)</small>
# File containing abbreviations 

## Lexica for adding tags and periods

Splitting in 4 + 1  groups, because of the preprocessor

 * **LEXICON Abbreviation   **
 1. The ITRAB ;	    lexicon (intransitive abbrs)
 1. The TRNUMAB ;   lexicon (abbrs trans wrt. numberals)

## The sublexica
### Dividing between abbreviations with and witout final period

 * **LEXICON ab-noun   **

 * **LEXICON ab-adv   **

### The lexicons that add tags

 * **LEXICON ab-nodot-noun   **  The bulk

 * **LEXICON ab-dot-noun   **  This is the lexicon for abbrs that must have a period.

 * **LEXICON ab-nodot-adv   **

 * **LEXICON ab-dot-adv   **  This is the lexicon for abbrs that must have a period.

 * **LEXICON ab-dot-adj   **  This is the lexicon for abbrs that must have a period.



## The abbreviation lexicon itself


 * **LEXICON SYMBOLS   ** is for iscellaneous abbr symbols



 * **LEXICON ITRAB   ** are intransitive abbreviations, Ltd. etc.








 * **LEXICON TRNUMAB   ** contains abbreviations who are transitive in front of numerals 

For abbrs for which numerals are complements, but other
words not necessarily are. This group treats arabic numerals as
if it were transitive but letters as if it were intransitive.







 * **LEXICON TRAB   ** contains transitive abbreviations

This lexicon is for abbrs that always have a constituent following it.















* * *
<small>This (part of) documentation was generated from [../src/fst/stems/abbreviations.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/abbreviations.lexc)</small>Prefixes
Prefixes in the Northern Haida language are bound to beginning of other words.




* * *
<small>This (part of) documentation was generated from [../src/fst/stems/prefixes.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/prefixes.lexc)</small>Northern Haida postpositions
Still need to add any distributive and reflexive forms
as well as demonstratives formed from PPs, etc.


* * *
<small>This (part of) documentation was generated from [../src/fst/stems/postpositions.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/postpositions.lexc)</small>Adverbs
Still need to add any potential distributive forms, reflexive forms, etc.




* * *
<small>This (part of) documentation was generated from [../src/fst/stems/adverbs.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/adverbs.lexc)</small>Adjectives
Adjectives in the Northern Haida language describe things.


* * *
<small>This (part of) documentation was generated from [../src/fst/stems/adjectives.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/adjectives.lexc)</small>
Northern Haida verb stems                       






 LEXICON VERBS 
V2
V2
V2
V2
V2
V2
V2
V2
V2
V2
V2
V2
V2
V2
V2
V2 
V2
V2



* * *
<small>This (part of) documentation was generated from [../src/fst/stems/verbs.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/verbs.lexc)</small>Numerals
Numerals in Haida?


* * *
<small>This (part of) documentation was generated from [../src/fst/stems/numerals.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/numerals.lexc)</small>Pronouns
Pronouns in the Northern Haida language are references to things.



* * *
<small>This (part of) documentation was generated from [../src/fst/stems/pronouns.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/pronouns.lexc)</small>Particles
Uninflecting particles, conjunctions, quantifiers, etc.



* * *
<small>This (part of) documentation was generated from [../src/fst/stems/particles.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/stems/particles.lexc)</small># The Northern Haida morphophonological/twolc rules file 

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-hdn/blob/main/src/fst/phonology.twolc) 

## Alphabet
 *  a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å    
 *  á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý þ ñ ð ß ç ' ʼ . %-   
 *  g̲ k̲ x̲   

 *  A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Æ Ø Å   
 *  Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã Ý þ Ñ Ð   
 *  G̲ K̲ X̲   
 *  %>:0 	 affix boundary
 *  %^WS:0     white space dummy
 *  %^DEF:0     white space dummy
 *  %^ENDA:0   
 *  %^ENDB:0   
 *  %^ENDC:0   
 *  %^ENDD:0   
 *  %^ENDE:0   
 *  %^ENDF:0   
 *  %^ENDG:0   
 *  %^ENDH:0   
 *  s2:s   
 *  ú2:ú   
 *  á2:á   
 *  é2:é   
 *  í2:í   
 *  ú2:ú   


## Sets


 *  Vow = a e i o u y æ ø å  
        á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã  ; 
 *  Cns = b c d f g h j k l m n p q r s t v w x z ð þ ' ʼ ç ý ñ ; 
 *  Orth = . %- ;      
 *  Endings = %^DEF %^ENDA  %^ENDB  %^ENDC  %^ENDD  %^ENDE  %^ENDF  %^ENDG  %^ENDH ;     
 *  Sgm = Vow Cns Orth   ; 



 *  WS = :* %^WS:0  :* ;    
 *  AccVow =  [ á: | é: | í: | ó: | ú: ]  ;      

## Rules


### ahl rules

**ahl to ál, ahl to áal** ahl changes to ál at the end of a stem verb when it is followed by an ending belonging to Set B, F, G or H


**ahl to ál, ahl to áal** 



**ahl to áal, part 2** 

**s2 to j for DEF** 

**aa to a for DEF** 


### Destressing

**Destressing rule** - The rule removes accents from vowels. This should be a general rule, but we have problems of getting the variables to accept 0:Vow




* * *
<small>This (part of) documentation was generated from [../src/fst/phonology.twolc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/phonology.twolc)</small>Noun inflection
Northern Haida nouns can inflect for definiteness, reflexive possession and plurality.




















Does Rfx override Pl, or other way around?

Need to make Massett dialect -ee versions for Indec ending in -aay








* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/nouns.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/affixes/nouns.lexc)</small>
# Symbol affixes





* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/symbols.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/affixes/symbols.lexc)</small>Adjective inflection
The Northern Haida language adjectives compare.



* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/adjectives.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/affixes/adjectives.lexc)</small>
Northern Haida verb affixes                       








 LEXICON CLASS-AA 



 LEXICON CLASS-AAL 


 LEXICON CLASS-AAL-INFL 

 LEXICON CLASS-AAN 

 LEXICON CLASS-AAN-INFL 

 LEXICON CLASS-AANG 

 LEXICON CLASS-AANG-INFL 

 LEXICON CLASS-AAW 

 LEXICON CLASS-AAW-INFL 

 LEXICON CLASS-AAY 

 LEXICON CLASS-AAY-INFL 

 LEXICON CLASS-AH 

 LEXICON CLASS-AH-INFL 


 LEXICON CLASS-AYD 

 LEXICON CLASS-AYD-INFL 


 LEXICON CLASS-EE 

 LEXICON CLASS-EE-INFL 

 LEXICON CLASS-EED 

 LEXICON CLASS-EED-INFL 


 LEXICON CLASS-I 

 LEXICON CLASS-I-INFL 


 LEXICON CLASS-IID 

 LEXICON CLASS-IID-INFL 


 LEXICON CLASS-U 

 LEXICON CLASS-U-INFL 


 LEXICON CLASS-AAHL 



 LEXICON CLASS-AAHL-STEM-2-INFL 


 LEXICON CLASS-AD 


 LEXICON CLASS-AD-STEM-1-INFL 

 LEXICON CLASS-AD-STEM-2-INFL 


 LEXICON CLASS-AL 


 LEXICON CLASS-AL-STEM-1-INFL 

 LEXICON CLASS-AL-STEM-2-INFL 


 LEXICON CLASS-AN 

 LEXICON CLASS-AN-STEM-1-INFL 

 LEXICON CLASS-AN-STEM-2-INFL 

 LEXICON CLASS-ANG 


 LEXICON CLASS-ANG-STEM-1-INFL 

 LEXICON CLASS-ANG-STEM-2-INFL 

 LEXICON CLASS-AW 


 LEXICON CLASS-AW-STEM-1-INFL 

 LEXICON CLASS-AW-STEM-2-INFL 


 LEXICON CLASS-AY 

 LEXICON CLASS-AY-STEM-1-INFL 

 LEXICON CLASS-AY-STEM-2-INFL 


 LEXICON CLASS-EEHL 

 LEXICON CLASS-EEHL-STEM-1-INFL 

 LEXICON CLASS-EEHL-STEM-2-INFL 

 LEXICON CLASS-ID 


 LEXICON CLASS-ID-STEM-1-INFL 

 LEXICON CLASS-ID-STEM-2-INFL 


 LEXICON CLASS-II 

 LEXICON CLASS-II-STEM-1-INFL 

 LEXICON CLASS-II-STEM-2-INFL 

 LEXICON CLASS-IN 

 LEXICON CLASS-IN-STEM-1-INFL 

 LEXICON CLASS-IN-STEM-2-INFL 


 LEXICON CLASS-ING 

 LEXICON CLASS-ING-STEM-1-INFL 

 LEXICON CLASS-ING-STEM-2-INFL 


 LEXICON CLASS-UD 

 LEXICON CLASS-UD-STEM-1-INFL 

 LEXICON CLASS-UD-STEM-2-INFL 


 LEXICON CLASS-UN 

 LEXICON CLASS-UN-STEM-1-INFL 

 LEXICON CLASS-UN-STEM-2-INFL 


 LEXICON CLASS-UNG 

 LEXICON CLASS-UNG-STEM-1-INFL 

 LEXICON CLASS-UNG-STEM-2-INFL 


 LEXICON CLASS-UU 

 LEXICON CLASS-UU-STEM-1-INFL   

 LEXICON CLASS-UU-STEM-2-INFL  


 LEXICON CLASS-A 

 LEXICON CLASS-A-STEM-1-INFL  

 LEXICON CLASS-A-STEM-2-INFL 


 LEXICON CLASS-A.A 

 LEXICON CLASS-A.A-STEM-1-INFL  

 LEXICON CLASS-A.A-STEM-2-INFL 






 LEXICON CLASS-AHL 


 LEXICON CLASS-AHL-INFL 


 LEXICON CLASS-AS 

 LEXICON CLASS-AS-STEM-1-INFL 

 LEXICON CLASS-AS-STEM-2-INFL 

 LEXICON CLASS-AS-STEM-3-INFL 


 LEXICON CLASS-E.E 

 LEXICON CLASS-E.E-STEM-1-INFL 

 LEXICON CLASS-E.E-STEM-2-INFL 


 LEXICON CLASS-E.EHL 


 LEXICON CLASS-E.EHL-STEM-1-INFL 

 LEXICON CLASS-E.EHL-STEM-2-INFL 


 LEXICON CLASS-IHL 

 LEXICON CLASS-IHL-STEM-1-INFL 

 LEXICON CLASS-IHL-STEM-2-INFL 

 LEXICON CLASS-IHL-STEM-3-INFL 


 LEXICON CLASS-IIHL 

 LEXICON CLASS-IIHL-STEM-1-INFL 

 LEXICON CLASS-IIHL-STEM-2-INFL 

 LEXICON CLASS-IIHL-STEM-3-INFL 


 LEXICON CLASS-IS 

 LEXICON CLASS-IS-STEM-1-INFL 

 LEXICON CLASS-IS-STEM-2-INFL 

 LEXICON CLASS-IS-STEM-3-INFL 


 LEXICON CLASS-UHL 

 LEXICON CLASS-UHL-STEM-1-INFL 

 LEXICON CLASS-UHL-STEM-2-INFL 

 LEXICON CLASS-UHL-STEM-3-INFL 


 LEXICON CLASS-US 

 LEXICON CLASS-US-STEM-1-INFL 

 LEXICON CLASS-US-STEM-2-INFL 

 LEXICON CLASS-US-STEM-3-INFL 


 LEXICON CLASS-UUHL 

 LEXICON CLASS-UUHL-STEM-1-INFL 

 LEXICON CLASS-UUHL-STEM-2-INFL 

 LEXICON CLASS-UUHL-STEM-3-INFL 


* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/verbs.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/affixes/verbs.lexc)</small>Proper noun inflection
The Northern Haida language proper nouns inflect in the same cases as regular
nouns, but with a colon (ʼ:ʼ) as separator.



* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/propernouns.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/affixes/propernouns.lexc)</small># Northern Haida verbal classifiesrs

There are appr 400 of these, they are pointed to a 
set of 150 verbs taking classifiers.












* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/classifiers.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/affixes/classifiers.lexc)</small>
Northern Haida morphological analyser                      

This file shows the Northern Haida multichar symbols and initial lexica.

 # Definitions for Multichar_Symbols

## Analysis symbols
The morphological analyses of wordforms of Northern Haida are presented
in this system in terms of following symbols.

(It is highly suggested to follow existing standards when adding new tags).

The parts-of-speech could perhaps also be (remove irrelevant):

These are vowel morphophonemes which will lose their accent when they are no long in closed syllables

 * á2  = 
 * é2  =
 * í2  =
 * ú2  =
 * s2  =

Haida has these tags for real, says Jordan.
 * +V          = Verbs
 * +N          = Nouns
 * +Prop       = Proper nouns
 * +Neg        = Negative
 * +3pl        = 3rd personal definite plural participant
 * +Interr     = Interrogative
 * +Fut        = Future
 * +Past       = Past
 * +Pres       = Present
 * +Hab        = Habitual
 * +Bias       = Biased
 * +Cert       = Certain
 * +Simp       = Simple
 * +Rel        = Relative
 * +NonFact    = Non_Factive
 * +Imm        = Immediate
 * +VNear      = Very near
 * +Rflx       = Reflexive
 * +Near       =
 * +Indir      = Indirect evidentiality
 * +Dir        = Direct evidentiality
 * +Cont       = Should keep on verbing
 * +Short      =
 * +Res        = Resigned obligation
 * +Long       =
 * +Ints       = Intensive
 * +Impv       = Imperative
 * +Evid       = Evidential
 * +Ctfact     = Counterfactual
 * +Sg         = Singular
 * +Pl         = Plural
 * +Def        =
 * +Indef      =
 * +Rfx        = Used for reflexively possessed body parts and kinterms
 * +Abs        = Non-reflexive forms of body parts and kinterms
 * +Pron       =
 * +Ptcl       =
 * +Cond-Aux1  = Used before non-ablauting secondary verbs
 * +Cond-Aux2  = Used before ablauting secondary verbs

Quasi-inflectional Tags

 * +Ext         = Extensional suffix -dáal
 * +Circum      = Circumambulative singular suffix -gwáang
 * +Stand-Sg    = Singular standing quasi-infl suffix -gyaʼáng
 * +Stand-Pl    = Plural standing quasi-infl suffix -gyaʼáang
 * +Order       = Quasi-infl suffix -hahl "tell to V"
 * +Incep       = Quasi-infl suffix -hid "start to V"
 * +Almost      = Quasi-infl suffix -sgä "almost V"
 * +Nocturn     = Quasi-infl suffix -ʼuhla "V all night"
 * +Sit-Sg      = Quasi-infl suffix -ʼwä "V sitting (sg)"
 * +Sit-Pl      = Quasi-infl suffix -ʼwaʼáang "V sitting (pl)"
 * +Distrib     = Quasi-infl suffix -agang "each" 

Valency Tags

 * +Val/0 = Environmental verbs (no subject) `(0)`
 * +Val/I = Impersonal Descriptive verbs `(Si)`
 * +Val/A = Active Descriptive verbs `(Sa)`
 * +Val/P = Passive Descriptive verbs `(Sp)`
 * +Val/AO = Active Dynamic verbs `(Sa) (O)`
 * +Val/AOR = Active Dynamic Reflexive verbs `(Sa) (Or)`
 * +Val/PO = Passive Dynamic verbs `(Sp) (O)`
 * +Val/IO = Impersonal Dynamic verbs `(Si) (O)`
 * +Val/AC = Active Causative verbs `(Sa) (C)`
 * +Val/ACR = Active Causative Reflexive verbs `(Sa) (Cr)`
 * +Val/PC = Passive Causative verbs `(Sp) (C)`
 * +Val/IC = Impersonal Causative verbs `(Si) (C)`
 * +Val/ACO = Active Transcausative verbs `(Sa) (C) (O)`
 * +Val/0X = Extended Environmental verbs (no subject) `(0) (X)`
 * +Val/IX = Extended Impersonal Descriptive verbs `(Si) (X)`
 * +Val/AX = Extended Active Descriptive verbs `(Sa) (X)`
 * +Val/PX = Extended Passive Descriptive verbs `(Sp) (X)`
 * +Val/AOX = Extended Active Dynamic verbs `(Sa) (O) (X)`
 * +Val/AORX = Extended Active Dynamic Reflexive verbs `(Sa) (Or) (X)`
 * +Val/POX = Extended Passive Dynamic verbs `(Sp) (O) (X)`
 * +Val/IOX = Extended Impersonal Dynamic verbs `(Si) (O) (X)`
 * +Val/ACX = Extended Active Causative verbs `(Sa) (C) (X)`
 * +Val/ACRX = Extended Active Causative Reflexive verbs `(Sa) (Cr) (X)`
 * +Val/PCX = Extended Passive Causative verbs `(Sp) (C) (X)`
 * +Val/ICX = Extended Impersonal Causative verbs `(Si) (C) (X)`
 * +Val/ACOX = Extended Active Transcausative verbs `(Sa) (C) (O) (X)`


The Human Classifiers

 * +CL/dla =
 * +CL/hlga =
 * +CL/k’u =

The Shape Classifiers

 * +CL/cha =
 * +CL/gáng =
 * +CL/gi =
 * +CL/gu =
 * +CL/g̲a =
 * +CL/hlga =
 * +CL/hlgi =
 * +CL/hlg̲a =
 * +CL/hlk’u =
 * +CL/hlk̲’a =
 * +CL/hlk̲’uhl =
 * +CL/ja =
 * +CL/k̲ʼíi =
 * +CL/sda =
 * +CL/sga =
 * +CL/sg̲a =
 * +CL/skáa =
 * +CL/sk’a =
 * +CL/sk̲’a =
 * +CL/stl’a =
 * +CL/tíi =
 * +CL/tl’a =
 * +CL/ts’as =
 * +CL/t’a =
 * +CL/t’áw =
 * +CL/xa =

The Descriptive Classifiers

 * +CL/cháam  =
 * +CL/chab  =
 * +CL/dab  =
 * +CL/dám  =
 * +CL/dláam  =
 * +CL/dlál  =
 * +CL/gám  =
 * +CL/gáw  =
 * +CL/gyáam  =
 * +CL/g̲áam  =
 * +CL/ĝám  =
 * +CL/hám  =
 * +CL/hlgáam  =
 * +CL/hlgám  =
 * +CL/hlgi  =
 * +CL/hlg̲áam  =
 * +CL/hlg̲áy  =
 * +CL/hlĝám  =
 * +CL/hlku  =
 * +CL/hlkuhl  =
 * +CL/hlkʼu  =
 * +CL/hlk̲ám  =
 * +CL/hlk̲ʼáam  =
 * +CL/hlk̲ʼuhl  =
 * +CL/hlk̲ʼwáahl  =
 * +CL/hltab  =
 * +CL/hltám  =
 * +CL/hltʼáam  =
 * +CL/hltʼab  =
 * +CL/hltʼahl  =
 * +CL/id  =
 * +CL/is  =
 * +CL/ja  =
 * +CL/jah  =
 * +CL/jíi  =
 * +CL/káa  =
 * +CL/kál  =
 * +CL/kám  =
 * +CL/ki  =
 * +CL/kún  =
 * +CL/kʼu  =
 * +CL/kʼúl  =
 * +CL/k̲ám  =
 * +CL/k̲áw  =
 * +CL/k̲ʼa  =
 * +CL/k̲ʼáam  =
 * +CL/k̲ʼéem  =
 * +CL/k̲ʼuhl  =
 * +CL/k̲ʼún  =
 * +CL/k̲ʼwáahl  =
 * +CL/mál  =
 * +CL/sdáam  =
 * +CL/sdah  =
 * +CL/sdúu  =
 * +CL/sga  =
 * +CL/sgab  =
 * +CL/sgáam  =
 * +CL/sgám  =
 * +CL/sgíl  =
 * +CL/sgún  =
 * +CL/sg̲áam  =
 * +CL/skám  =
 * +CL/skʼáam  =
 * +CL/skʼál  =
 * +CL/sk̲ʼáam  =
 * +CL/sk̲ʼihl  =
 * +CL/smál  =
 * +CL/stad  =
 * +CL/stlúu  =
 * +CL/stlʼáam  =
 * +CL/sʼahl  =
 * +CL/tlúu  =
 * +CL/tlʼáam  =
 * +CL/tlʼab  =
 * +CL/tlʼad  =
 * +CL/tlʼúu  =
 * +CL/tsʼúu  =
 * +CL/tʼáam  =
 * +CL/tʼab  =
 * +CL/tʼám  =
 * +CL/xab  =
 * +CL/xáw  =
 * +CL/x̲a  =

Restricted Descriptive Classifiers

 * +CL/ga  =
 * +CL/gáam  =
 * +CL/gab  =
 * +CL/gáng  =
 * +CL/gu  =
 * +CL/gúl  =
 * +CL/hlkwáahl  =
 * +CL/hlkʼib  =
 * +CL/hlk̲áa  =
 * +CL/hlk̲íl  =
 * +CL/hltáam  =
 * +CL/hltab  =
 * +CL/hltʼah  =
 * +CL/hltʼab  =
 * +CL/jám  =
 * +CL/jíi  =
 * +CL/jíihl  =
 * +CL/kám  =
 * +CL/kún  =
 * +CL/kʼwáa  =
 * +CL/kʼwáahl  =
 * +CL/k̲ab  =
 * +CL/k̲ʼa  =
 * +CL/k̲ʼah  =
 * +CL/síi  =
 * +CL/skáy  =
 * +CL/sk̲ʼéehl  =
 * +CL/stláam  =
 * +CL/stlab  =
 * +CL/stlʼúu  =
 * +CL/sʼab  =
 * +CL/sʼyúu  =
 * +CL/tláa  =
 * +CL/tlʼáahl  =
 * +CL/tlʼán  =
 * +CL/tlʼál  =
 * +CL/tsʼám  =
 * +CL/tʼab  =
 * +CL/xáam  =
 * +CL/xwáad  =
 * +CL/x̲a  =
 * +CL/x̲ab  =
 * +CL/x̲aw  =
 * +CL/x̲áam  =
 * +CL/x̲ún  =
 * +CL/x̲úl  =

Rare Classifiers (SKIPPED, LEXICALIZE THESE)

Sound Classifiers (ALSO LEXICALIZE?)

Human Classifers (to be added)

The pre-verb classifiers

 *  CL/Shape+  = 
 *  CL/Manner+  = 
 *  CL/Human+  = 
 *  CL/Human_Male+  = 
 *  CL/Human_Female+  = 
 *  CL/Descriptive+  = 
 *  CL/Sound+  = 
 *  CL/Color+  = 

 *  +CL/Shape  = 
 *  +CL/Manner  = 
 *  +CL/Human  = 
 *  +CL/Human_Male  = 
 *  +CL/Human_Female  = 
 *  +CL/Descriptive  = 
 *  +CL/Sound  = 
 *  +CL/Color  = 

Semantic Tags


Dialect Tags



Triggers



The parts-of-speech could perhaps also be (remove irrelevant):

 * +A	     =
 * +Adv     =
 * +Pron    =
 * +CS	     =
 * +CC	     =
 * +Adp     =
 * +Po	     =
 * +Pr	     =
 * +Interj  =
 * +Pcle    =
 * +Num     =

 * +Def   =
 * +Indef  =

The parts of speech are further split up into:

 * +Prop    =
 * +Pers    =
 * +Dem     =
 * +Interr  =
 * +Refl    =
 * +Recipr  =
 * +Rel     =
 * +Indef   =

The Usage extents are marked using the following tags:
 *  +Err/Orth      = Substandard forms
 *  +Use/-Spell   = Not included in speller

The nominals are inflected in the following Number

 * +Sg    =
 * +Pl    =
 * +Indef  =
 * +Def   =
 * +Abs  =
 * +Rfx  =

The verbs can have the following morphological features:

 * +1sg    =
 * +2dl    =
 * +2pl    =
 * +2sg    =
 * +3pl    =
 * +3sg    =
 * +Edl    =
 * +Epl    =
 * +Fut    =
 * +FutImp    =
 * +Hab    =
 * +Idl    =
 * +ImmPast    =
 * +Inf    =
 * +Ipl    =
 * +Prs    =
 * +PrsImp    =
 * +RemPast    =
 * +RepPast    =

Verb prefixes


Muilti word expressions

tag for generating the MWE for abbr 

The TAM flags





Verbs and prnouns
 * +1Sg     first singular
 * +2Sg     etc
 * +3Sg     third singular

Verbs and pronouns
 * +1Sg     = first person singular
 * +2Sg     = second person singular
 * +3Sg     = third person singular

 * +1Pl     = first person plural
 * +2Pl     = second person plural
 * +3Pl     = third person plural



 * +ABBR  = Abbreviations
 * +Symbol = independent symbols in the text stream, like £, €, ©
 * +ACR   = Acronyms


Special symbols are classified with:
 * +CLB    = Clause boundary symbols
 * +PUNCT  = Other punctuation marks
 * +LEFT   = Left part of paired symbols
 * +RIGHT  = Right part of paired symbols

The verbs are syntactically split according to transitivity:
 * +TV  
 * +IV  

Special multiword units are analysed with:
 *  +Multi  

Non-dictionary words can be recognised with:
 *  +Guess  


Composite UTF-8 characters, i.e. g, k, and x with


## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
 |  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
 |  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
 |  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
 |  @P.CmpPref.FALSE@ | Block these words from making further compounds
 |  @D.CmpLast.TRUE@ | Block such words from entering R
 |  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
 |  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
 |  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
 |  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.

The word forms in Northern Haida start from the lexeme roots of basic
word classes, or optionally from prefixes:
 *   VERB_ROOT  ;     


* * *
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/fst/root.lexc)</small>


We describe here how abbreviations are in Northern Haida are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 


* * *
<small>This (part of) documentation was generated from [../src/transcriptions/transcriptor-abbrevs2text.lexc](http://github.com/giellalt/lang-hdn/blob/main/../src/transcriptions/transcriptor-abbrevs2text.lexc)</small>
[ L A N G U A G E ]  G R A M M A R   C H E C K E R









# DELIMITERS


# TAGS AND SETS



## Tags


This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.




### Beginning and end of sentence
BOS
EOS



### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
QMARK
PPUNCT
PUNCT

COMMA
¶



### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall


### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess



Err/Orth



### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

HAB-ACTOR
HAB-ACTOR-NOT-HUMAN


PROP-ATTR
PROP-SUR



TIME-N-SET


###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X





## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.



### Sets for Single-word sets

INITIAL


### Sets for word or not

WORD
REAL-WORD
REAL-WORD-NOT-ABBR
NOT-COMMA


### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets


NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC


### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V





### Pronoun sets

















### Adjectival sets and their complements




### Adverbial sets and their complements




### Sets of elements with common syntactic behaviour


### NP sets defined according to their morphosyntactic features








### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.





















### Border sets and their complements











### Grammarchecker sets








* * *
<small>This (part of) documentation was generated from [../tools/grammarcheckers/grammarchecker.cg3](http://github.com/giellalt/lang-hdn/blob/main/../tools/grammarcheckers/grammarchecker.cg3)</small>