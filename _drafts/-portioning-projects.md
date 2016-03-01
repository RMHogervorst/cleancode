---
layout: post
title: "Portioning projects"
author: roel_hogervorst
modified:
categories: blog
excerpt: 
tags: [philosophy, intermediate, modular projects]
image:
  feature:
date: 2016-02-14
---

This is the intro to a series about projects.


# Code to solve a Problem

Your code is solving a large and important Problem . But to get to the solving of the big Problem (with a capital P), you need to overcome small problems (small p). One way to solve your Problem is to put everything into one script,  or one function. But I would like to argue for the use of modules. Make one project for your big and important Problem and make small functions or modules for your problems. 
![distinction one script approach and modular approach](images/project_philosophy.png)

# Why is this better?

Small modules can be optimized to perform one thing really well. And small modules are easily readable and are much easier to test. Modular programming also makes it easier to add new functions, you can refactor modules or add a new module. 

# Planning your project

Alright, I have convinced myself that modular programming is useful, how do I start to solve my Problem?  

## imagine the way your code should work when finished
This is a perfect moment to write some parts of the documentation. How will someone use this code? What are the options? What type of data are allowed? All these questions lead to logical submodules: check the options that a user imputed, default options, check for datatype, and so fort. 
Make a list of modules and their description, or even better make tests that return true when the module works. 

## start on one of the submodules
Make small modules that do one thing and one thing only. Make automated tests that will inform you if the module doesn't work anymore.  
When it works start a new one until your Problem is solved.

# Next step
Next week we will go into the nitty gritty of your code.

### Further reading
* [Modular Programming, wikipedia](https://en.wikipedia.org/wiki/Modular_programming)
