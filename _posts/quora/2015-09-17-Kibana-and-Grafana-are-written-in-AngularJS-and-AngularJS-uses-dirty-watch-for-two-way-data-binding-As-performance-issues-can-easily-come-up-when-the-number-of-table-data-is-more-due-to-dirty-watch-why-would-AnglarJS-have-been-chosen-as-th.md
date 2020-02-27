---
date: '2015-09-17'
language: en
original_url: 'https://quora.com/Kibana-and-Grafana-are-written-in-AngularJS-and-AngularJS-uses-dirty-watch-for-two-way-data-binding-As-performance-issues-can-easily-come-up-when-the-number-of-table-data-is-more-due-to-dirty-watch-why-would-AnglarJS-have-been-chosen-as-th/answer/Clément-Renaud'
source: quora
title: |
    Kibana and Grafana are written in AngularJS and AngularJS uses dirty
    watch for two way data binding. As performance issues can easily come up
    when the number of table data is more due to dirty watch, why would
    AnglarJS have been chosen as the preferred framework?
---

My guess is that they chose Angular because 1) client-only is very easy
to deploy (no install, just download a folder) and 2) the  "directive "
approach makes it very modular, which fits the need of a tailor-made
dashboard. 
 
The 2-ways data binding is an issue only if you load a lot of data on
the client, which doesn 't happen because Kibana requests are written
using things like count, facets and now aggregations. Elasticsearch
actually does the data-intensive part and Kibana just need a neat way to
inject graph representations in specific parts of the dashboard 's DOM.
Angular is good at this.
