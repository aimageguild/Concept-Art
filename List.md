---
layout: home
---


<div class="posts">
{% assign index_pages = site.pages | where: "name", "index.md" %}
{% assign sorted_pages = index_pages | sort: "path" | reverse %}

{% for page in sorted_pages %}
    <div class="post-preview">
        <h2><a href="./{{ page.url }}">{{ page.dir | remove: '/' }}</a></h2>
    </div>
{% endfor %}
</div>
  