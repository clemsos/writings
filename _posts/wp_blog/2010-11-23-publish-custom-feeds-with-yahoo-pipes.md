---
layout: post
status: publish
published: true
title: Publish custom feeds with Yahoo! Pipes
author:
  display_name: clemsos
  login: clemsos
  email: ''
  url: ''
author_login: clemsos
wordpress_id: 224
wordpress_url: http://clemsos.freevar.com/blog/?p=224
date: '2010-11-23 05:26:51 +0100'
date_gmt: '2010-11-23 05:26:51 +0100'
categories:
- Web Tools
tags: []
comments: []
---
<p>I was needing to do something really classic: gather many RSS feeds from different sources, choose part of them and make it a single RSS feed to use as a newsletter. After trying different tool, I chose <strong>Yahoo! Pipes</strong>, an easy application with a nice graphic interface which is not that new but still help a lot when you need it. <!--more--></p>
<p>The matter was that I run this blog who has a <a href="http://clemsos.freevar.com/blog/?feed=rss2">RSS</a>, but I also publish articles on different websites, some photos on <a href="http://www.flickr.com/photos/clement-renaud">my Flickr</a> and some works of mine on my <a href="http://clemsos.freevar.com/site">website/portfolio</a>. So the question was how to group all those <strong>different sources inside one single RSS feed</strong>. I could have build a little PHP script to fetch all feeds and publish it again in RSS, but I wanted to be able to modify the feed settings easily. If you suddenly don't want something to be publish or feel the need to add something, it will be a pain to edit some PHP every time. So I needed the feed configuration to be available online, as far as possible with a simple (graphic) interface. I tried several online services and I finally chose <a href="http://pipes.yahoo.com">Yahoo! Pipes</a>.</p>
<p><strong>A friendly interface</strong></p>
<p><span style="font-size: 13.2px;">Yahoo! Pipes has the main advantage to be really user-friendly. It <em>"lets you remix feeds and create new data mashups in a visual programming environment." </em>said the <a href="http://blog.pipes.yahoo.com/2007/02/07/introducing-pipes/">official blog</a>. Don't be scared by complicated words, it's easy to use. It works like a building game: you have some blocks containing or filtering your data and you organize it using <em>pipes </em>to reach the output block<em>. </em>The tree structure is a good way to visualize your feed structure. </span></p>
<p><a href="http://www.clemsos.com/blog/wp-content/uploads/2010/09/pipes-screenshot1.jpg"><img class="aligncenter size-medium wp-image-229" title="Yahoo! Pipes screenshot" src="http://clemsos.freevar.com/blog/wp-content/uploads/2010/09/pipes-screenshot-300x141.jpg" alt="pipes-screenshot" width="300" height="141" /></a></p>
<p><strong>Make your own Pipe: explaining functionalities</strong></p>
<p>First you'll have to reach for <a href="http://pipes.yahoo.com/pipes/">Yahoo! Pipes</a> homepage and then click on <em>Create a new Pipe.</em></p>
<ul>
<li><strong><em><span style="font-weight: normal;">Add  your sources</span></em></strong></li>
</ul>
<p><img class="size-full wp-image-227 alignleft" title="Yahoo! Pipes accepted sources " src="http://www.clemsos.com/blog/wp-content/uploads/2010/09/pipes-add-source2.jpg" alt="pipes-add-source" width="158" height="270" /></p>
<p>Now you will have to choose the data that you want to fetch in your feed. Yahoo! Pipes allows you to create a single feed using not only RSS feed but also search engine results, Flickr, web pages and some more data. Look at the whole list here.</p>
<p>Now we'll had a new feed to fetch. Drag and drop the fetch feed button on your workspace. Enter the URL of the feed to fetch in the dedicated field.</p>
<p><a href="http://www.clemsos.com/blog/wp-content/uploads/2010/09/pipes-add-feed1.jpg"><img class="aligncenter size-medium wp-image-231" title="pipes-add-feed" src="http://clemsos.freevar.com/blog/wp-content/uploads/2010/09/pipes-add-feed-300x153.jpg" alt="pipes-add-feed" width="300" height="153" /></a></p>
<p>You can check the content of the feed in the debugger on the bottom of the page.</p>
<p><a href="http://www.clemsos.com/blog/wp-content/uploads/2010/09/pipes-debug1.jpg"><img class="aligncenter size-medium wp-image-232" title="pipes-debug" src="http://clemsos.freevar.com/blog/wp-content/uploads/2010/09/pipes-debug-300x96.jpg" alt="" width="300" height="96" /></a></p>
<ul>
<li><em>Filter your sources</em></li>
</ul>
<p>You can add filters and different other methods (<em>look in Operators</em>) to collect only posts you chose from a specific feed. Let's say we just need posts from a specific author, it will be done as follow :<a href="http://www.clemsos.com/blog/wp-content/uploads/2010/09/pipes-filter1.jpg"><img class="aligncenter size-medium wp-image-233" title="pipes-filter" src="http://clemsos.freevar.com/blog/wp-content/uploads/2010/09/pipes-filter-300x256.jpg" alt="" width="300" height="256" /></a></p>
<p>You can also add dates or replaces string in the content. An automatic translation tool is also available.</p>
<ul>
<li><em>Use multiple sources</em></li>
</ul>
<p>You can add multiple sources and group them together using the <em>Union <span style="font-style: normal;">tool which is in the </span>Operators </em>menu on the right. Your <em>pipe </em>will look like that</p>
<p><a href="http://www.clemsos.com/blog/wp-content/uploads/2010/09/pipes-union1.jpg"><img class="aligncenter size-medium wp-image-234" title="pipes-union" src="http://clemsos.freevar.com/blog/wp-content/uploads/2010/09/pipes-union-300x145.jpg" alt="" width="300" height="145" /></a></p>
<ul>
<li><em>Export your feed</em></li>
</ul>
<p>Save the whole project and you will be able to visualize your feed. You can export it in RSS, Atom and many other newsfeed formatting. You can also view it on Yahoo's interface.</p>
<p>Have a look on the <a href="http://pipes.yahoo.com/pipes/pipes.popular">Popular Pipes</a> page. It introduces many pipes already created by people that you can re-use to fit your own needs.</p>
<p>NB: Yahoo! Pipes was released in February 2007, the website still in beta version today.</p>
