---
layout: post
title: "regular expressions"
author: roel_hogervorst
modified:
categories: blog
excerpt: ""
tags: [beginner, intermediate,  reminder]
image:
  feature:
date: 2016-05-26
---

This is a small introduction to regular expressions. A regular expression is a sequence of characters that define a search pattern, mainly for use in pattern matching with strings, or string matching, i.e. "find and replace"-like operations[^1].

For instance we have this part of script from the series Star Trek the Next Generation [^2]

```
23   INT. CARGO BAY (OPTICAL)

	As Worf leads in his security team... sees Qol up on
	the makeshift ladder near the sarcophagus... taking
	readings with a Ferengi tricorder...

					WORF
			You! What are you doing?

	The sudden intrusion startles Qol and as he turns to
	their arrival, the support under him wobbles and falls
	backwards, kicking the crates he's standing on into the
	sarcophagus... the energy field crackles and shorts
	out... and the sarcophagus falls and as it hits the
	floor, it cracks open, causing bright shafts of light
	to shoot out... and slowly the shell dissolves
	(indicating that the casing is constructed from some
	sort of "solid" energy).

     STAR TREK: "The Perfect Mate" - 2/10/92 - ACT ONE     11.

23   CONTINUED:

					QOL
			This is a misunderstanding... I
			was looking for the barbershop...
			Apparently I made an incorrect
			turn -- and...
```

Regular expressions help you select parts 

```
Task 	Text 	 
match 	wazzzzup 	To be completed
match 	wazzzup 	To be completed
skip 	wazup
```

 grep("waz{2,4}up") 



### regex post. 
Wat zijn regular expressions
tools: grep, grepl (logical)
sub, gsub

alle nummers tenmiste 2 achterelkaar
"[0-9]{2,}"

^ start
$ finish

()  \\1
() ()  () \\1 \\2 \\3

[a-zA-Z]




zoek ding: wil je dit? wil je dit?

*gebruik de slides van coursera* https://github.com/DataScienceSpecialization/courses/tree/master/03_GettingData/04_02_regularExpressions 

https://github.com/DataScienceSpecialization/courses/tree/master/03_GettingData/04_03_regularExpressionsII

of de pdfs: https://github.com/DataScienceSpecialization/courses/blob/master/03_GettingData/lectures/04_03_regularExpressionsII.pdf

<http://regexone.com/lesson/letters_and_digits> 

[^1]: wikipedia <https://en.wikipedia.org/wiki/Regular_expression>
[^2]: Star Trek TNG episode "the perfect mate" <http://www.imdb.com/title/tt0708818/>