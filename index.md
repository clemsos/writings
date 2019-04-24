# Clément Renaud's Writings

All writings by Clément Renaud.


## Blog Posts

<ul>
{% for post in site.posts %}
 <li><a href="{{post.url}}">{{post.title}}</a></li>
{% endfor %}
</ul>

## Quora

<ul>
{% for post in site.quora %}
 <li><a href="{{post.url}}">{{post.title}}</a></li>
{% endfor %}
</ul>
