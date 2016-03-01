---
layout: post
title: "Creating a package for your data set"
author: roel_hogervorst
modified:
categories: blog
excerpt: 
tags: [beginner, package, coffeedata]
image:
  feature:
date: 2016-02-25
---

Turning your dataset into a package is very useful for reproducable research. This tutorial is for you, even if you've never created a package in r.

Why would you turn your dataset into a package?

* very easy to share
* easy to load (easier then `load("path/to/file")` or `data<-read.csv("path/to/file")` etc.)
*  documentation is part of the package and will never separate from data
*  attributes of file remain
*  nice and easy introduction to package building


Step 0: locate your dataset, both raw and clean 
step 1: create a new project with Rstudio
step 2: save the clean file
step 3: create a description file
step 4: describe the package with a vignette.
step 5: test and build
step 6: maintain your dataset if it changes.

In this example I will make a package from my all the times I drank coffee. 
I started keeping score because I realized I drank more coffee since working full time. There are actually more coffee datasets then I thought: [coffee consumption and labour production](http://freakonometrics.hypotheses.org/16010)
[international coffee organization historical data](http://www.ico.org/new_historical.asp) or [several coffee datasets](http://harvestchoice.org/products/data/60)

Anyway, this file is not really useful to anybody except maybe me, but a package is quite usefull for a variaty of analyses.

# Step 0: locating your datasets

You need a dataset on your harddisk

# Step 1: Create a new project

simple project name no spaces no points no dashes
think about this, dataset21really is not descriptive nor helpful for you in the future.
  
# Step 2: save the clean file
# Step 3: create a description file

description
and data.r
useful if someone types: ?yourdataname
See this example in [hadley's babyname package](https://github.com/hadley/babynames/blob/master/R/data.R)


# Step 4: describe the package with a vignette.

Use the template from rstudio:
![rstudio rdocument window]({{ site.github.url }}/images/rstudio-document-dataset.PNG)

Give it the name of your dataset

This is the endresult
![example rstudio rdocument with coffee filled in]({{ site.github.url }}/images/rstudio-document-dataset2.PNG)



###
Create a package for your dataset
 Totally stolen from hadley wickham 


make r file describing your dataset. Look really hard for examples or just click on rstudio, new, rdocumentation pick data.


OEH!  KOFFIE DATA HIERIN!

RAW EN DAN RDA EN EEN PAAR ANALYSE DINGEN.

