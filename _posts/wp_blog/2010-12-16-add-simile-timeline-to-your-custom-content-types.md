---
layout: post
status: publish
published: true
title: Add SIMILE Timeline to your custom content types
author:
  display_name: clemsos
  login: clemsos
  email: ''
  url: ''
author_login: clemsos
wordpress_id: 242
wordpress_url: http://clemsos.freevar.com/blog/?p=242
date: '2010-12-16 02:21:28 +0100'
date_gmt: '2010-12-16 02:21:28 +0100'
categories:
- Web Tools
tags: []
comments: []
---
<p>I was working on some custom content types and I wanted to use the SIMILE timeline for Wordpress, but I cannot get the metabox in the admin part.</p>
<p>What you have to change is inside the plugin code timeline.php, line 219.</p>
<p>It stills pretty much a dirty hack and it could be a good idea to implement content types further in the timeline admin area. I'll see what I can do</p>
<p>[sourcecode language=php]<br />
/*<br />
* Custom box hook for post and page interface adds custom option box<br />
*/<br />
function addPostPanelEventDates() {<br />
	if(WPSimileTimelineLoader::loadPlugin()){<br />
		$wpstl = WPSimileTimeline::singleton();<br />
		$wpstl->init();<br />
		if( function_exists('add_meta_box')) {<br />
			add_meta_box( 'stl-timeline-event-data', __( 'SIMILE Timeline', 'stl_timeline' ), array('WPSimileTimelineAdmin', 'outputCustomPostDateOptions'), 'post', 'advanced' );<br />
			add_meta_box( 'stl-timeline-event-data', __( 'SIMILE Timeline', 'stl_timeline' ), array('WPSimileTimelineAdmin', 'outputCustomPostDateOptions'), 'page', 'advanced' );<br />
			add_meta_box( 'stl-timeline-event-data', __( 'SIMILE Timeline', 'stl_timeline' ), array('WPSimileTimelineAdmin', 'outputCustomPostDateOptions'), 'your custom content type name here', 'advanced' );<br />
		}<br />
	}<br />
}<br />
[/sourcecode]</p>
