---
language: en
original_url: 'https://www.quora.com/What-are-the-pitfalls-of-React-D3-When-are-they-worth-the-hassle-i-e-the-benefits-outweigh-the-pitfalls/answer/Cl%C3%A9ment-Renaud'
source: quora
title: "What are the pitfalls of React + D3? When are they worth the hassle i.e. the benefits outweigh the pitfalls?"
---

If you use D3 and React together to handle SVG, both will fight to take the control of the DOM. The important thing is to assign clear tasks to each in your design and see if both are still needed. My advice will be to let React deals with the DOM and data update and import utils from d3 for things like scales, colors, string formatting, etc.

I have been a huge fan of D3 since its v1 but the way client apps are built have changed tremendously since. As today React offered a better way to isolate your UI problems by building them into scoped (and reusable) components. Also React does not care about your data management workflow, which leaves you free to manage data and UI state in your favorite way.

D3 had a more integrative approach by offering functions for fetching, parsing, math, string formatting, SVG drawing, etc. This was absolutely great few years ago when Javascript tooling was still in its infancy, but now feels overkill. Even d3’s founder Mike Bostock acknowledged the limits of that model and decided to split the lib into modules with the v4 release. Some of the d3 modules are still really useful. I use d3-scale all the time because the API is very straightforward - once you get used to it.

D3 was and still an excellent graphing tool that can also be used to prototype interactions. The release of [Observable](https://observablehq.com/@clemsos) by d3 founder is a very nice attempt to push that dynamic a step forward. Just isolate your idea or problem, open a notebook, write the code, it runs - no webpack pain. More importantly, you can import and share work with one of the most creative and prolific JS community.

The focus on React is not on visualisation but on creating frontend apps. If you need a dashboard with buttons and charts, just use React for the heavy work and d3 for the nice things. On the other end, if you are experimenting with crazy graphic structures then d3 is the way to go.

Hope it helps !
