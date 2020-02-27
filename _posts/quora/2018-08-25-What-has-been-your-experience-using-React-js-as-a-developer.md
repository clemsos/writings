---
date: '2018-08-25'
language: en
original_url: 'https://quora.com/What-has-been-your-experience-using-React-js-as-a-developer/answer/Clément-Renaud'
source: quora
title: 'What has been your experience using React.js as a developer?'
---

The tooling/compiling can be painful but tools like react-scripts makes
it much easier.

The JSX syntax is a bit twisted and can take some time to get, but once
you wrap your head around it, it proves super useful.

The component approach is great and works super well to keep UI code
organized and reusable in larger applications.

The ecosystem and documentation is solid and provides many resources to
not waste time on what has already been solved.

Additions like react-router quickly become mandatory when you work on
real world apps.

The "one-way data flow" paradigm is very interesting but redux, reflux
or similar are quite cumbersome and hard at the beginning. Redux is very
good and provides solid architecture but few people knows it, so to
start to use it in a small team have time implications. Using redux
really reveals the beauty of React though (if such thing exists).

Another problem is that react is a very opiniated framework that does
not play well with other libraries. For instance, I use a lot of d3js in
my projects and there is no satisfactory way to have them work nicely
together, as they both take control of the DOM in their own way.

Hope it helps!
