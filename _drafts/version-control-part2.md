---
layout: post
title: "Version control with your code part 2"
author: roel_hogervorst
modified:
categories: blog
excerpt: 
tags: [beginner, git, version control, sourcetree, mvp]
image:
  feature:
date: 2016-02-14
---


Version control-vervolg




The commands are not important, but your workflow is. When you work on a problem in your code, work in small chunks. First the most basic example that works, then you add some customization and then you add some more things. On every milestone (working basic example, working basic with additions, robust version) you make a commit. But make the steps really small. Commit often, don't make things perfect. 

The best way to tackle a problem, according to programmers, is to start with a minimum viable product (mvp). You create something simple that works. Then add complexity in small steps, testing every new feature that you add with the old version. 

## branching.

CAN'T BRANCH IN RSTUDIO WITHOUT SHELL COMMANDS. 
What I created was a fun project, but let's pretend this is project with a clear goal in mind. You might want to take on a simple branching method: the master branch is your always working branch, the develop branch is where you build new features. Step by step you create a new thing and when it is finished, we will merge to the master branch.

That means we must go to the develop branch to work on features. But there is no develop branch yet!   


* [Branching in rstudio with shell](http://christianlemp.com/blog/2014/02/13/How-I-Manage-Data-Projects-with-RStudio-and-Git-Part-2.html)