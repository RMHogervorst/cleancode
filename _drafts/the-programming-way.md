---
layout: post
title: ""
author: roel_hogervorst
modified:
categories: blog
excerpt: 
tags: [beginner, git, version control]
image:
  feature:
date: 2016-04-11
---

GEBRUIK DIT ALS INSPIRATIE 
https://stat545-ubc.github.io/bit007_draw-the-rest-of-the-owl.html



I started with a [post about portioning projects](https://rmhogervorst.github.io/cleancode/blog/2016/02/14/portioning-projects.html). Let's expand that a bit.


## The scientists way of coding [^1]

Here is what happened to me very frequently: 

I thought of a way to tackle a problem. I wrote down what should happen and started to code. While I was working I thought of new things that needed to happen, and added these too. 

I tested the code. It didn't work. 
I didn't know where the code broke.

I cried a bit

I tested every single piece of code to find the problem.

When it worked I added new features 

Something else broke, 

I thought everything should work, but still had to test many many pieces of code until I found out what went wrong.
 
### TDD
Now let me tell you about the way professional programmers work [^2]: 

- They work in small steps. 
- They create a minimal working product
- They test the functionality of the code while working on it
- They add functionality step by step, testing all the way

Some programmers even write the test first and write the code that should pass the test later. 

When you work on a problem in your code, work in small chunks. First the most basic example that works, then you add some customization and then you add some more things. On every milestone (working basic example, working basic with additions, robust version) you make a commit. But make the steps really small. Commit often, don't make things perfect [^3]. 

The best way to tackle a problem, according to programmers, is to start with a minimum viable product (mvp). You create something simple that works. Then add complexity in small steps, testing every new feature that you add with the old version. 



##Notes

[^1]: Alright, this is how I worked, but I see it in others as well. 

[^2]: I draw these examples from the extreme programming movement, test driven design and modern programming techniques such as lean and agile programming. I was inspired by books such as: [*The pragmatic programmer*](https://pragprog.com/) - Andrew Hunt & David Thomas and *[The Clean Coder](https://sites.google.com/site/unclebobconsultingllc/): A Code of Conduct For Professional Programmers* by Robert C. Martin.

[^3]: perfect is the enemy of good, some say [since 1600](https://en.wikipedia.org/wiki/Perfect_is_the_enemy_of_good)