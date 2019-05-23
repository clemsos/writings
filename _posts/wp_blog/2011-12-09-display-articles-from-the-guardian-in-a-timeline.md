---
layout: post
status: publish
published: true
title: Display articles from the Guardian in a timeline
author:
  display_name: admin
  login: admin
  email: clement.renaud@gmail.com
  url: ''
author_login: admin
author_email: clement.renaud@gmail.com
wordpress_id: 389
wordpress_url: http://www.clemsos.com/blog/?p=389
date: '2011-12-09 06:37:53 +0100'
date_gmt: '2011-12-09 06:37:53 +0100'
categories:
- Tech
- Web Tools
- tutorials
tags:
- guardian
- api
- timeline
- dipity
- SIMILE
- aiweiwei
comments: []
---
<p>I finally had some time to check <a href="http://www.guardian.co.uk/open-platform/content-api-content-search-reference-guide">The Guardian API</a>. I really wanted to use it somehow, so I decided to make a very basic test in putting all articles related to Chinese artist Ai Weiwei on a timeline. Here is a short tutorial on how to do it :</p>
<p><strong>An API to access all the content of the Guardian</strong></p>
<p>To get a first grip on the API, you can try their manual content explorer, which have a research interface for your favorite topics. You can use multiple queries to precise your search. Here I first browse the website itself to find Ai Weiwei dedicated item name (which is a tag).</p>
<p>&nbsp;</p>
<p><a href="/img/wp_blog/2011/12/Guardian-Content-Explorer-e1323412432452.png"><img class="aligncenter size-full wp-image-391" title="Guardian Content Explorer" src="/img/wp_blog/2011/12/Guardian-Content-Explorer-e1323412432452.png" alt="" width="700" height="330" /></a></p>
<p>With that, you get an URL that will provide you with a XML containing titles, publication dates and several information from The Guardian database (all content related to Ai Weiwei). If you want to get whole articles, you will have to<a href="http://guardian.mashery.com/"> register for an account</a>. The basic free version has a limitation of 12 calls per second and 5,000 calls per day, which will be far enough for what we are doing here.</p>
<p>&nbsp;</p>
<p><strong>Put your content in a timeline</strong></p>
<p>Now let's find a timeline service somewhere. My first preference goes to <a href="http://www.simile-widgets.org/timeline/ ">SIMILE Timeline</a> because I have used it in many projects already. Anyway, several problem with it : 1. I will have to host it ; 2. The config process for colors, size, etc has to be coded in JS, not really user friendly ; 3. I don't want to spend time implementing this timeline in another website as it is just a test.</p>
<p>Fortunately, web services has evolved since SIMILE project started and I recently get across <a href="http://www.dipity.com/">Dipity</a>, where you can host and design timelines online. It is a pretty cool website where you can make timeline with <a href="http://www.dipity.com/faq">many sources</a> included RSS, Flickr, Twitter, etc. And even XML following <a href="http://www.simile-widgets.org/wiki/Timeline_EventSources#XML_Examples">SIMILE Timeline DTD</a>, which will be my choice, so I can re-use the script if one day I need to create a timeline myself.</p>
<p>So we have XML provided by The Guardian API and we need to transform it into a <a href="http://www.simile-widgets.org/wiki/Timeline_EventSources#XML_Examples">SIMILE Timeline XML</a>. We will simply apply a XLS stylesheet and we are done. Here is the XLS file :</p>


```xml
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="yes" media-type="text/xml" />

	<xsl:template match="/">
		<data>
			<xsl:apply-templates/>
		</data>
	</xsl:template>

	<xsl:template match="results/content">
		<event>
			<xsl:attribute name="start"><xsl:value-of select="@web-publication-date"/></xsl:attribute>
			<xsl:attribute name="isDuration">false</xsl:attribute>
			<xsl:attribute name="title"><xsl:value-of select="@web-title"/></xsl:attribute>
			<xsl:value-of select="@web-url"/>
		</event>
	</xsl:template >

</xsl:stylesheet></pre>
```
<p>Now we need a little PHP script to trigger the transformation. The max results per page on the Guardian API is 50, so we need to add an attribute for pagination to be able to retrieve all the results (134 articles related to Ai Weiwei) . Here is the code :</p>

```php
//get page numbers for xml pagination
$page = $_GET["page"];
$xml_url = "http://content.guardianapis.com/artanddesign/ai-weiwei?format=xml&page=".$page."&page-size=50&order-by=newest&api-key=";

// create XSLT processor resource
$xp = new XsltProcessor();

// create a DOM document and load the XSL stylesheet
$xsl = new DomDocument;
$xsl->load('guardian.xsl');

// import the XSL styelsheet into the XSLT process
$xp->importStylesheet($xsl);

// create a DOM document and load the XML datat
$xml = new DomDocument;
$xml->load($xml_url);

// transform the XML into HTML using the XSL file
if ($result = $xp->transformToXML($xml)) {
    echo $result;
} else {
    trigger_error('XSL transformation failed.', E_USER_ERROR);
} // if</pre>
```
<p>Ok we are done. Now, just upload our PHP and XSL file somewhere, copy the URL of the PHP script and we are ready to add our sources to our Dipity timeline.</p>
<p>&nbsp;</p>
<p><a href="/img/wp_blog/2011/12/Dipity-sources-e1323412491912.png"><img class="aligncenter size-full wp-image-392" title="Dipity sources" src="/img/wp_blog/2011/12/Dipity-sources-e1323412491912.png" alt="" width="650" height="269" /></a></p>
<p>After 2 seconds, our <a href="http://www.dipity.com/clemsos/Aiweiwei/">timeline</a> has been updated with the articles, we're done !</p>
<div class="dipity_embed" style="width: 600px;"><iframe style="border: 1px solid #CCC;" src="http://www.dipity.com/clemsos/Aiweiwei/?mode=embed&amp;z=0#tl" width="600" height="400"></iframe></p>
<p style="margin: 0; font-family: Arial,sans; font-size: 13px; text-align: center;">on <a href="http://www.dipity.com/">Dipity</a>.</p>
</div>
