---
layout: page
title: Blog
excerpt: "An archive of blog posts sorted by date."
search_omit: true
---

See all the post so far or, if you would like to see the posts sorted by keyword [click here]({{ site.url }}/tags/)

I created a series for people coming [from SPSS to R]({{ site.url }}/blog/2016/02/20/from-spss-to-r-part1.html) . 

 
<ul class="post-list" >
{% for post in site.categories.blog %} 
  <li><article class="post" itemprop="blogPost" itemscope="" itemtype="http://schema.org/BlogPosting"><a href="{{ site.url }}{{ post.url }}" itemprop="url" >{{ post.title }} <span class="entry-date" itemprop="dateCreated"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt" itemprop="description">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
