---
layout: post
title: "Version control with Git"
author: roel_hogervorst
modified:
categories: blog
excerpt: 
tags: [beginner, git, version control]
image:
  feature:
date: 2016-02-14
---

## Keeping track of versions 

You work on a project and would like to keep track of what you did. 
That is why keep old versions of your files. That way you can go back if you messed up beyond recognition. 

Usually that looks like this:

![phd comic file system]({{ site.github.url }}/images/phd052810s.gif)

Or like this

![filesystem without version control]({{ site.github.url }}/images/versioncontrol2.png)

Other people use dropbox or something like it:

![dropbox versions]({{ site.github.url }}/images/dropboxversion.png)

And that is fine. If it works, it works. 
However in some cases you might want to go back to a previous version and work from there, or start with a variant your colleague made. 
And sometimes you just want to check what has changed between two versions.
That could become very difficult with these ways of versioning. 

## Version control software

When you write r-code, version control could become more than keeping track of changes. With version control software you can create snapshots of the points where you fixed bugs, where you finished features and even better, you can exactly tell where versions of the file are different. 

The most widely used software are Mercurial, SVN and GIT. We will explain GIT, first of all because it can be used with [Rstudio](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN "Version control with git - Rstudio"), and second because it works nicely with Github. Third, it is the most used version control system of the world.

So how does Git work? Every time you reach a point in you project that you think is critical, you make a commit. You save a current state of all the files in the directory. And when you make this snapshot of your files, you can (and should) write down what you solved and what you changed since last time. In the future when you look back at your commit history you can read in what state your project was. 

In the next example you can see what changed in the files, without even looking at the files themselves. 
![commits from test_dat, from github](images/commits_example.png)

## Branching
Even better, you can start from any saved point in time and create a new version. And when you like that version better, merge it back into an other version. 
![branches](images/branches.png)

### related posts
- []()


### Further Reading
[Git in Rstudio](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)
[git website](https://git-scm.com/)
[r-blogger.com all articles about git](http://www.r-bloggers.com/?s=git) 