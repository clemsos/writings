# Clément Renaud's Writings

All writings by Clément Renaud.

{% assign counter = 0 %}{% for item in site.posts %}{% unless item.published == false %}{% assign counter=counter | plus:1 %}{% endunless %}{% endfor %}{{ counter }} blog posts


## Blog Posts


<ul>
{% for post in site.quora | reverse%}
  {% include list_item.html %}
{% endfor %}
{% for post in site.posts | reverse %}
  {% include list_item.html %}
{% endfor %}
</ul>
