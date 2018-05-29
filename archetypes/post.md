---
title: "{{ replace .TranslationBaseName "-" " " | title }}"
author: Roel M. Hogervorst
date: {{ .Date }}
categories:
  - blog
subtitle: ""
tags: []
---

<!-- content  -->
<!-- try to think of the following things:
 - tell what you learn in this part 
 - problem statement
 - sub headings
 - kicker
 - references, explicitly name them. 
---------
Good tutorials are: 
- quick. tell what you want to do, how to do it
- easy: success is important. playtest the tutorial under different circumstances
- not to easy: Don't get htem throug ht toturoial onluy to runinto a wall later on. 

-->

##### State of the machine
<details>
<summary> At the moment of creation (when I knitted this document ) this was the state of my machine: <click> </summary>

```{r}
sessioninfo::session_info()
```
</details>
