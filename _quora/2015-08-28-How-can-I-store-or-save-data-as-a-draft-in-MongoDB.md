---
date: '2015-08-28'
source: quora
language: en
title: |
    How can I store or save data as a draft in
    MongoDB? - Quora
---

There is no such thing as a draft in Mongo. Some approaches could be :\

-   Just save the whole document, display it to the user for review and
    update the fields where the user have made changes.
-   Keep the data on client-side only for the review process and send
    the final document all at once to Mongo.
-   Define a state in your document showing if the data has been
    reviewed by the user or not, and keep a ref of the document
    containing a previous version.

There may be other ways to do it. You could also use a combination of
those.
