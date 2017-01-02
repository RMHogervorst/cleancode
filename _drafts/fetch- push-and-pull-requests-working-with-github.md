######## OPDELEN IN VERKLARENDE WOORDENLIJST VAN TYPE CLARIFICATION EN 
UITLEG VAN WAT IS GIT EN WAT IS GITHUB VOOR R-USER, WAAROM IS HET HANDIG. 

Let's talk about github. What is it and what do you do with it. Specifically for r-user (or use-Rs as they are also known).  Writing software is a collaboration. It's useful to share your code. 

#Short introduction. GIT vs GITHUB
Ive talked before about [version control](/../../../2016/03/01/version-control-start.html) 

Many types of version control

now many many people use git. You don't need github, you don't need to share you code. git is for you. for you and your team. You can use it to track changes. That is all. 

However. If you'd like to share with people not on your network, things get harder. You could send the zipped folder to someone over e-mail or share your code on your website. But there are also online services that function as another git node. Git is a distributed version control system, so there is no main trunk, no true master branch. But you can choose to use one location as your master branch. 

One website is github. It's not better or more awesome but many people are on it. 

So what is github? 

Github site is just another user really. You can share with that user, that user is online. You can control access to that user and some more options. 

In a way the github are copies of your own branches. you will keep them in sync. 

What github allows is that other users can copy your project or contribute to it. It's also very visual. 

# git things

### repository

You store your work in a repository

### Commit
What did we already know about git?  Git keeps versions of your file. 
If you track a file git will save a version of it, and on a new commit will check what has changed. It will save all the changes when you commit. 

### Branch
You can also branch. think of it as a main tree trunk and you can then diverse from that trunk and start a new variation. So branching is splitting of the maintree (but you remain connected by the commit where you split off from). 


### Merge
You can also connect branches (merging). Git will try to find a way to combine the changes from one branch with the other branch. 


### checkout
You don't need to be at the end of branch. you can go back to previous versions, this is called checkout. 

### fetch
download from remote into your repository and check what the changes are

### Pull
download from remote and merge into your work

### push
update a remote location (keeping them in sync with your local) 

### remote
other place to store code (for instance on seperate disk, on a networkdrive, or online)


# So what is github

At its core its just a place to store your repositories so that others can get to them.

## github is for collaboration

HAs tools such as issue tracker

comment on what someone is doing

### forking

making a copy of someones repository


### pull-request
What is this? you can already pull on git! But only the owner of a repo can pull information to its repo. What if you have a briljant idea? Then you would have to notify the owner that your idea is briljant and he or she should pull your version down. 
That part is mostly automated in github. you fork their project, change your local version (because you can, you are now the owner of that local version) and notify the original owner that you have awesome idea.

The owner now gets a notification and can accept your proposal, deny your proposal but also comment on what you did. and you can talk back. Then you might change your version a bit to comply to the oringal owner and finally your request is accepted and your part of the code is now part of their project (and git keeps a record of what everyone contributed).

pull request

what is it, from where to where?

according to [github help](https://help.github.com/articles/using-pull-requests/) switch to your branch. 

compare is the one you pull into. 

tell what changed

> The easiest way of thinking about the branch range is this: the base branch is where you think changes should be applied, the head branch is what you would like to be applied.


### issue tracker

refer to, names


### wiki 

never use it, I make my readme good enough and since I only make r packages I will make a vignette to explain difficult / advanced things. 

### readme


# issues

use for yourself
![github issues example](images/issues_for_self.png)\

use as is meant, for others == bugreports



# milestones

divide up your work into manageable parts. 
versions of r packages [hadley's advice](http://r-pkgs.had.co.nz/release.html#release-version)

> graphs look ugly

-- put it in release version, not the needs-to-work-for-eighty-percent version

# assigning and labeling
for yourself:
filter your issues 

will-not-fix, I will do it. 
group work



# wiki
Not really necessary but could be useful, especially the linking between pages. More important to make explanation in help files really good.
I would focus most work on your help files, using the roxygen commits 

[according to github this one is realy nice](https://github.com/mbostock/d3/wiki)


# links
<https://guides.github.com/> 

<https://jahya.net/blog/git-vs-github/> 
<https://www.linkedin.com/pulse/git-flow-vs-github-luca-mezzalira>