This file gives an nverview of some still ad hoc solutions for disambiguation.

# Prerequisites:

* vislcg3 installed A text corpus. The one we have,
  `test/data/haida_grammar.utf8corpus.txt`, is fetched from Jordan's
  brochure. Only full sentences are included, they are marked with a
  sentence initial "# " symbol. They all have a translation in
  English, marked with an initial "&".

# Making missinglist

```
cat test/data/haida_grammar.utf8corpus.txt |grep "#"|cut -c3-|\
tr ' ' '\n' | tr '=' ' '|uhdn|grep '?' |cut -f1 | sort |\ 
uniq -c | sort -nr > doc/data/missing.haidagrammarcorpus```

# How to analyse

Haida differs from the other languuages in not having an adjusted
version of the preprocessor yet. While waiting , we do some ad hoc
solutions. Here is a pipeline that gives an analysis.

Note the = symbol, it is used to mark MWEs in the text.

```
cat test/data/haida_grammar.utf8corpus.txt |grep "#"|cut -c3-|tr ' ' '\n' | tr '=' ' '|uhdn|lookup2cg | vislcg3 -g src/syntax/disambiguation.cg3
```

# Strategies for disambiguation

Look at common ambiguity patterns

* [Grammar ambiguity](data/grammarambiguity.html)
* [Word ambiguity](data/wordambiguity.html)

To create similar statics, use the `sum-cg.pl` script (write *sum-cg.pl --help* in order to get just that.

# Status

* [Words missing from the analyser](data/missing.haidagrammarcorpus)
* [Grammatical homonymy](data/grammarambiguity.html)

* [Grammar ambiguity](data/grammarambiguity.html)
* [The list of missing words](data/missing.haidagrammarcorpus)
* [Word sense disambiguation](data/wordambiguity.html)
