---
date: '2015-07-09'
source: quora
title: |
    Clément Renaud\'s answer to How do I read console window errors from
    Chrome using JavaScript? - Quora
---

This lib seems to catch console messages :
[ianpgall/js-console-listener](https://github.com/ianpgall/js-console-listener) 
(I never tested it)\
\

> A library that allows you to listen for console events.

\
Basically, it overrides the existing console methods and replace it with
its own methods.\
\
If you want to catch windows error, you just need to use the
`window.onerror` listener. If you return `true` in your callback, then
the propagation of the error will stop and won\'t be log in the console
(see the docs :
[GlobalEventHandlers.onerror](https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers/onerror)
)\
\

    window.onerror = function myErrorHandler(err, url, line) { 
        //Do some  stuff
       
       return false; // so you still log errors into console
    }
