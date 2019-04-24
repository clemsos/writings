---
date: '2018-10-03'
source: quora
language: en
title: |
    Which is the first argument typically passed
    to a Node.js callback handler? - Quora
---

By convention, lots of libraries were passing an error message as the
first argument to make it easier to check for errors.

    function doThis(callback){ 
        callback(error, data);
    }

    doThis( error, data => {
        if (error) handleError(); // error
        console.log(data); // success
    })

As more code is moving to use
[Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise),
this convention may disappear leaving developers with no real answer to
this question.
