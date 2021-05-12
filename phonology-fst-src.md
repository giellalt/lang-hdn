# The Northern Haida morphophonological/twolc rules file 

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




