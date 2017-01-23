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
date: 2016-04-11
share: true
---

I made a introduction to version control on [March 01, 2016.](https://rmhogervorst.github.io/cleancode/blog/2016/03/01/version-control-start.html)

This is part 2 of version control. We will discuss committing 


# How to use version control?

In part one we I showed how to install git and make it work with rstudio. 
I also showed how to do a commit (a snapshot of the project files of your choosing at that moment). Perhaps you have used it a few times. That's great! experimentation is what helps you learn. 


# Commit often

When do you make your panic extra saving version of your important word document?

When you finish a tricky part or when you start something new right?

That's also when you make a commit. But git commits have the added benefit of describing what exactly happened why you did it and the code reflects the changes since the previous commit. 


Don't commit when you close your computer for the day, that is just saving. only commit when something is finished. 


in fact 


## branching.

CAN'T BRANCH IN RSTUDIO WITHOUT SHELL COMMANDS. 
Learn to use the shell commands, click git shell on rstudio.
git - branch oid

or use a visual tool such as sourcetree that displays what you do and what happened. (or git gui)

![image of visual overview of summarizedat in sourcetree]({{github.site.url}}/images/sourcetree_visual-overview.PNG)

What I created was a fun project, but let's pretend this is project with a clear goal in mind. You might want to take on a simple branching method: the master branch is your always working branch, the develop branch is where you build new features. Step by step you create a new thing and when it is finished, we will merge to the master branch.

That means we must go to the develop branch to work on features. But there is no develop branch yet!   





* [Branching in rstudio with shell](http://christianlemp.com/blog/2014/02/13/How-I-Manage-Data-Projects-with-RStudio-and-Git-Part-2.html)


