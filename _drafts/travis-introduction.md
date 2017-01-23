tutorial intermediate
https://github.com/RMHogervorst/cleancode/issues/29



Setting up travis


advanced. laat iedereen zien dat je serieus neemt, en dat het echt werkt op andere builds.

Building with travis_ci and github

r packages are supported in travis. 
Travis Ci is a continuous integration tool, it means every time you push a new commit to github, travis builds your package and tests if it works.  




# what is Continuous integration (CI) and why should I care

from programming movement that went from carefully planning out everything into starting with a small working example and adding to it, by continuously improving, or continuously integrating all of the work. 

Travis (and other CI tools) are directly connected to github (or other version control hosting services). Every new commit you create (or upload) will trigger a new build. That means that according to some instructions that you provide it will build an environment and run your application [^1]. In our case it will create a linux container (I think) with R installed and it will then run r-cmd-check in that environment. 

Now the neat thing is: you can test your package in the old, current and developmental version of R. And you could test it in linux and Mac os. Or if yo like: in several versions of those systems. 

And for now it is all free for open source software. 


# Travis for packages
main focus, although other options possible, please send suggestions
Used to be quite difficult, some people created some scripts. But then a group of people (mostly rstudio folks) created a guide and a 'standard' way of doing travis-ci see this [link](https://docs.travis-ci.com/user/languages/r)


## Further reading 

- Travis documentation for beginners <https://docs.travis-ci.com/user/for-beginners>
- Travis documentation for R <https://docs.travis-ci.com/user/languages/r>


# Notes

[^1]: Some people use it to build their website after each new post, It is used in ruby on rails projects, creating Android apps and many many more things. Travis has this introduction to its services: <https://docs.travis-ci.com/user/for-beginners> 