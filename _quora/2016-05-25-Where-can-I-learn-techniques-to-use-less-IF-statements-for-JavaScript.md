---
date: '2016-05-25'
language: fr
original_url: 'https://quora.com/Where-can-I-learn-techniques-to-use-less-IF-statements-for-JavaScript/answer/Clément-Renaud'
source: quora
title: 'Where can I learn techniques to use less IF statements for JavaScript?'
---

You can write if statement inline.

    var a = 11; 
    a == 10 ? alert("true") : alert("false");

Even more sophisticated

    var isTen = (a == 10) ? "yes" : "no";

More generally, a good solution to deal with data and avoid loops is to
use functional patterns, like `filter` or `map/reduce` functions. It is
a bit tricky at the beginning but totally worth the effort. It really
makes your code clearer.

[Functional programming in Javascript: map, filter and
reduce](http://cryto.net/~joepie91/blog/2015/05/04/functional-programming-in-javascript-map-filter-reduce/)

Also the less known
.[some()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)
and
[.every()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)
are neat ways to test the content of your arrays efficiently.
