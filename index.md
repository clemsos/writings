## All writings by Clément Renaud.

{% assign counter = 0 %}
{% assign total_words = 0 %}

{% for item in site.posts %}
{% unless item.published == false %}

{% assign counter=counter | plus:1 %}
{% assign wordCount = item.content | number_of_words %}
{% assign total_words=total_words | plus:wordCount %}

{% endunless %}
{% endfor %}

<b>{{ counter }} entries from {{ site.posts.last.date | date: "%Y"}} to {{ site.posts.first.date | date: "%Y" }}.</b>

{% include posts.html %}

(approx. {{ total_words }} words)

This is an ongoing work to extract writings from different platforms and consolidate works in a single (ownable) place.

For any questions or ideas, please use the [Github repo](https://github.com/clemsos/writings).
