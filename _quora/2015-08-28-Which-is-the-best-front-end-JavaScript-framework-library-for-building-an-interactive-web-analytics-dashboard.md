---
date: '2015-08-28'
source: quora
language: en
title: |
    Which is the best front-end JavaScript
    framework/library for building an interactive web analytics dashboard? -
    Quora
---

**Well, I will suggest to use a combination of frameworks (React/Flux,
d3 and Browserify) instead of relying to heavily on a single one (like
Angular).**\
\
I agree with
[Alejandro](http://quora.com/profile/Alejandro-Mart%C3%ADnez-12)that
React is good because it will take care of all DOM manipulation, plus it
has a really nice learning curve that make it pleasant to use and
learn.\
\
D3.js is really powerful and you will be able to draw reactive charts
and maps with great interactivity and fancy transitions. It works nicely
with React and can do some interesting maths operation as well.\
\
Now, you also need a strong way to manipulate data on the client-side,
so you can have smooth interaction, especially if you use things like
real-time or complex API calls. There is several solutions here, but I
will try to present some of them here.\
\
I have been working with Angular for the last years, but if you haven\'t
I will recommend against it. There is several problems to it : 1) it is
very painful to learn (even if it seems easy during the first week), 2)
the API is not consistent between versions and there is complete rewrite
coming soon that will worsen things and 3) the framework is not very
flexible and impose the structure of your app (basically an MVC which is
often over-complicated). Now, you can have very good results with
Angular but it will take you lots of experience with the framework. It
was almost the first of his kind but today it is a bit overrated IMHO.\
\
With React and d3, you have already  lots of components available, so
you are better focus on the logic of the data flow rather that learning
another the arcana of the framework. For those reasons, I mostly stopped
using Angular and started with Flux, which is the data manipulation
framework that binds with React. Like React, it is very easy to use from
day one and quite powerful. I am trying it in production right now and I
am having very good results. Concepts are plain simple :  you have
stores to store data and listener to listen to change. You can use the
awesome [Reflux](https://github.com/reflux/refluxjs) lib which make it
even easier.\
\
Another thing I would like to mention is that you should try developing
with Browserify. I came to it recently and it is just great. You can use
all the Node syntax and most of the npm libs on client side and it will
just compile to the client. The
[Browserify-test](https://github.com/alekseykulikov/browserify-test)
framework works great. You just have to setup some npm tasks and it
really allows you to organize your code as you want and not worry too
much about efficiency while prototyping.
