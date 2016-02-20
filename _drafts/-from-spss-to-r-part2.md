---
layout: post
title: "From spss to R, part 2"
author: roel_hogervorst
modified:
categories: blog
excerpt: 
tags: [beginner, dplyr, ggplot2, spps-to-r]
image: 
  feature: from_spss_to_r.png
date: 2016-02-10
---
{% include read_time.html %}


# data manipulation with dplyr
dplyr is a package for manipulating dataframes. It works really well and has a thought out structure. I could copy other websites and create an example, but the following introduction is better than I could have made:

https://stat545-ubc.github.io/block009_dplyr-intro.html

and here is some background information

https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html

## in short:

There are 7 'verbs' that do all the work.

    filter() (and slice())
    arrange()
    select() (and rename())
    distinct()
    mutate() (and transmute())
    summarise()
    sample_n() and sample_frac()

Filter filters rows, select selects columns, distinct is a variant of unique and mutate changes. These verbs are tools, the plyrs of a dataframe. Very generic tools that help you select and filter your data.  