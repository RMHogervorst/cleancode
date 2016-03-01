---
layout: post
title: "The use of commits"
author: roel_hogervorst
modified:
categories: blog
excerpt: 
tags: [intermediate, git, version control, commit, not-just-R]
image:
  feature:
date: 2016-02-10
---

One very useful tool is a version control system. We've talked about the use of git or other version control software before. 
But let's talk about what to put in a commit message:

> Write a commit message which describes the changes that you’ve made. The first line of a commit message is called the subject line and should be brief (50 characters or less). For complicated commits, you can follow it with a blank line and then a paragraph or bulleted list providing more detail. Write messages in imperative, like you’re telling someone what to do: “fix this bug”, not “fixed this bug” or “this bug was fixed”.[1]

So preferably: short, to the point, describe what it should do. 
Usually you only need the first line of the description. Also try to fix one problem at the time. That could mean changing code in multiple places, but keep it to one problem. For example: "fix typos in readme" or "delete all junk files"

You should see the commit message as an order in a restaurant, when you add your part to the repo the order is fulfilled and can be placed on a spike. You have finished that part. 
![office spike](office_spike.jpg)


## good examples of messsages
Let's see some examples of commit messages in the wild,
these are the messages in ggplot2, knitr and a repo about datasharing.

![ggplot commit example](ggplot_commit_exaple.png)
![knitr commit example](knitr_commit_example.png)
![datasharing commit example](jtleek_datasharing_commits.png)

## bad examples of messages
It's ok to make mistakes:

> We don't make mistakes, just happy little accidents -- *Bob Ross*

In the next real world example the second commit is really uninformative:

![github.com/rmhogervorst/imdb/commit](wrong_commit.png)

Or as xkcd says:
![Git commit XKCD](http://imgs.xkcd.com/comics/git_commit.png)

And here are some illustrative examples in a separate repo:

<https://github.com/RMHogervorst/badcommits/commits/master> 


## how large should a commit be?
Like I said, keep it to one problem. 
And like others say: commit often, perfect later [2]. Do commit every step you make. but make the steps small. Solve small problems and then fix it.

# don't commit like you save your word documents.
>Finished for today. saving for later

Is not correct. Solve one problem, in small steps. 
See for yourself in the two branches of the [badcommits](https://github.com/RMHogervorst/badcommits/commits/master) repo. The correct or better branch shows better commit messages. 

Describe the why, not the what. 
At a glance, you should be able to see what a commit does. But there should be enough detail so you can remember (and understand) what was done.

Working together easier, can see logs
working with yourself, easier, remember what you did

##links:
[2][commit often, perfect later, publish once: git best practices](https://sethrobertson.github.io/GitBestPractices/)
[1][Hadley Wickhams ideas about git and github in the pkgs book] (http://r-pkgs.had.co.nz/git.html)
[A note about git messages, contains example message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)