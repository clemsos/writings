## All writings by Clément Renaud.

<b>{% assign counter = 0 %}{% for item in site.posts %}{% unless item.published == false %}{% assign counter=counter | plus:1 %}{% endunless %}{% endfor %}{{ counter }} entries from {{ site.posts.last.date | date: "%Y"}} to {{ site.posts.first.date | date: "%Y" }}.</b>


<ul>
{% for post in site.posts %}
  {% include list_item.html %}
{% endfor %}
</ul>
