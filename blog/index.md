---
layout: page
title: Blog
excerpt: "An archive of blog posts sorted by date."
search_omit: true
---

See all the post so far or, if you would like to see the posts sorted by keyword [click here]({{ site.url }}/tags/)

I created a series for people coming [from SPSS to R]({{ site.url }}/blog/2016/02/20/from-spss-to-r-part1.html) . 

 
<ul class="post-list">
{% for post in site.categories.blog %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<div class="posts" itemscope="" itemtype="http://schema.org/Blog">
  <h1 itemprop="name">My blog</h1>
  {% for post in site.posts %}
    <article class="post" itemprop="blogPost" itemscope="" itemtype="http://schema.org/BlogPosting">
      <h2><a href="{{ post.url }}" itemprop="url"><span itemprop="name">{{ post.title }}</span></a></h2>
      <meta itemprop="keywords" content="{{ post.tags | join: ',' }}" />
      <div class="entry" itemprop="description">
        {{ post.content | strip_html | truncatewords: 40 }}
      </div>
    </article>
  {% endfor %}
</div>
