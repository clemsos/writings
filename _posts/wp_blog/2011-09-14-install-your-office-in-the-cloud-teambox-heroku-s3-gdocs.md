---
layout: post
status: publish
published: true
title: Install your office in the cloud (Teambox, Heroku, S3, GDocs)
author:
  display_name: admin
  login: admin
  email: clement.renaud@gmail.com
  url: ''
author_login: admin
author_email: clement.renaud@gmail.com
wordpress_id: 285
wordpress_url: http://www.clemsos.com/blog/?p=285
date: '2011-09-14 08:11:40 +0200'
date_gmt: '2011-09-14 08:11:40 +0200'
categories:
- Tech
- Web Tools
tags:
- Outils internes
- Teambox
- Heroku
- S3
- GDocs
- online desk
- collaborative tools
- project management
- tools
- outils
comments:
- id: 28
  author: Paul Adams
  author_email: paul@chaos-studio.com
  author_url: http://chaos-studio.com
  date: '2011-09-15 07:48:45 +0200'
  date_gmt: '2011-09-15 07:48:45 +0200'
  content: Awesome job on the write up! didn't even know heroku and s3 offered free
    services. nice work.
- id: 29
  author: admin
  author_email: clement.renaud@gmail.com
  author_url: ''
  date: '2011-09-15 08:08:52 +0200'
  date_gmt: '2011-09-15 08:08:52 +0200'
  content: Thanks Paul ! glad you like it
- id: 37
  author: Paul Adams
  author_email: paul@chaos-studio.com
  author_url: http://chaos-studio.com
  date: '2012-02-16 10:56:34 +0100'
  date_gmt: '2012-02-16 10:56:34 +0100'
  content: "some changes to fix some updates for you, but i just used it 2012/02/16:\r\n\r\nchange:
    heroku addons:add sendgrid:free &gt; heroku addons:add sendgrid:starter\r\n\r\nchange:
    app/layout/sites.haml &gt; app/views/layouts/sites.haml"
- id: 38
  author: admin
  author_email: clement.renaud@gmail.com
  author_url: ''
  date: '2012-02-16 12:29:33 +0100'
  date_gmt: '2012-02-16 12:29:33 +0100'
  content: "thanks again ! I just made the changes to the post...\r\ncheers paul"
---

I have been using <a href="https://teambox.com/tour">Teambox services</a> for quite a while and I really love the tool. It is great to build projects, deal with time and people in many places and get things done. They offer different of services on on their website. The free on is limited to 5 projects and a few collaborators only and if your organization is scaling fast you'll need to pay more soon.

<a href="https://github.com/teambox/teambox"><img class="alignnone" title="Teambox Screenshot" src="https://a248.e.akamai.net/assets.github.com/img/24eb67378b4bde0ef353c3da591768cf386ab684/687474703a2f2f7465616d626f782e636f6d2f696d616765732f6d61726b6574696e672f7465616d626f785f73637265656e73686f742e706e67" alt="Teambox Screenshot" width="950" height="392" /></a>

Few weeks before, I discovered they have a downloadable version (many thanks to <a href="www.chaos-studio.com">Paul</a> !). They don't promote it really, but you can find it in diging the menus through the label community. You'll find eventually a <a href="https://github.com/teambox/teambox">rep on Github</a> so you can download and install it.

Here I just post my notes for an install of Teambox using cloud services like Heroku, Amazon S3, Google Docs, etc. Teambox is built with Ruby on Rails, so what you will need to run it locally on your computer is Rails 3, bundler, git, mysql and some text editor (i love Textmate fot that matter). I won't cover it here. About Ruby, I warmly advice you to use RVM. Teambox doesn't play nice at all with Ruby 1.9.2, so you will need 1.8.7 instead. If you use OSX or Ubuntu, you have it already installed.

You can also deploy it directly online so you don't need all those things in your local machine (except Git).

There is already some <a href="https://github.com/teambox/teambox/wiki/installing-on-heroku">instructions</a> for installation and even a <a href="http://www.youtube.com/watch?v=2PKRbuuksew">screencast</a> but I wanted to got through it again as I found some information missing on both. And it doesn't cover Google apps integration, which is a key feature of Teambox for me.
<h2>Step 1: get Teambox</h2>

To start, you will need <a href="http://help.github.com/mac-set-up-git/">git</a> and a <a href="http://help.github.com/">Github account</a>. Don't be scared by the apparent complexity, it is worth to take your time to understand it. Github is one of the greatest community of tool makers today. Almost anything you should use for your computer is potentially already on Github. There is so many good projects going on there. So, just follow the <a href="http://help.github.com/">instructions</a> to open and setup your account (for <a href="http://help.github.com/win-set-up-git/">windows</a>).

Now copy/paste the code below in your terminal and it will create a "teambox" folder with all the files from the online repository.

```bash$ git clone git://github.com/micho/teambox.git```

You can now move inside your new folder
```bash$ cd teambox```

and check what is inside
```bash$ ls```

you should see something like that
```bash
$ ls
CLEAN Gemfile.lock RAILS3.md Rakefile config db lib public spec vendor
Gemfile LICENSE README.md app config.ru features log script test
```

To be sure you will be using a stable version, input this in the terminal
```bash$ git checkout master```
Git repository are organized in branches for different uses and purposes (dev, different OS, etc.) The &lt;em&gt;master&lt;/em&gt; branch is considered as a public release of a stable version.
<h2>Step 2: Create an online app with Heroku</h2>

Now let's go online. We will use a cloud service named Heroku. The concept of Heroku is simple: you don't want to setup a whole server and all its complex routines each time you start a web project, right? Heroku is a web service that take care of all that for you. You just upload your files to Heroku servers and it will take care of deploying it accordingly.

You will need first to sign up for an <a href="www.heroku.com/signup">Heroku account</a>. When it is done, input his in terminal:
```bash$ gem install heroku```
It will install a gem, which is like a plugin for ruby (the language of the application) that will allow you to communicate with the Heroku servers.

After that create your Heroku application to upload your Teambox.
```bash$ heroku create --stack bamboo-ree-1.8.7```
The "--stack bamboo-ree-1.8.7" part is to run Heroku with ruby 1.8.7

It will provide you with a auto-generated URL for your application.
```bash
$ heroku create --stack bamboo-ree-1.8.7
Creating my-random-name... done, stack is bamboo-ree-1.8.7
http://my-random-name.heroku.com/ | git@heroku.com:my-random-name.git
Git remote heroku added
```

You can change it afterwards using this command, just changed my-teambox-name with the name of your choice.
```bash$ heroku rename my-teambox-name```

You will have to install 2 add-ons for Heroku for emails to be sent by the application
```bash
$ heroku addons:add sendgrid:starter
$ heroku addons:add memcache:5mb
```
<h2>Step 3: configure our app</h2>

Now we will have to edit the configuration file <em>teambox.yml</em> in the <em>config</em> folder.
Just change the url line 8 to fit with Heroku url:
```ruby
# Configuration shared between all environments:
defaults: &amp;amp;defaults
# The domain from where your app is served
app_domain: localhost
```

Should be

```ruby
# Configuration shared between all environments:
defaults: &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;defaults
# The domain from where your app is served
app_domain: my-teambox-name.heroku.com
```

Save the file.

Now if you look at <em>git status</em> output in your terminal, you will see which files have been modified

```bash
$ git status
# On branch master
# Changes not staged for commit:
# (use "git add <file>..." to update what will be committed)
# (use "git checkout -- <file>..." to discard changes in working directory)
#
# modified: config/teambox.yml
#
no changes added to commit (use "git add" and/or "git commit -a")
```

Let's store the changes with Git so we can send it to Heroku.
```bash
$ git commit -am "Website URL configuration"
[master 6c0a236] Website URL configuration
1 files changed, 1 insertions(+), 1 deletions(-)
```
<h2>Part 4: Allow file upload with Amazon S3</h2>

As Heroku doesn't allow you to upload files other than the website itself, you will need a cloud service for file. <a href="http://aws.amazon.com/s3/">Amazon Service Storage System (S3)</a> offer a great solution and have a free plan for the first year. You can get your <a href="https://aws-portal.amazon.com/gp/aws/developer/account/index.html?ie=UTF8&amp;action=access-key">Amazon security credentials</a> here.

When you have your key and secret key, just add it to heroku with the following command. The bucket is a unique name you create on Heroku to store your S3 credentials.
```bash$ heroku config:add S3_KEY=123 S3_SECRET=xzy S3_BUCKET=mybucket```
<h2>Step 5: Deploy your application and start using it</h2>

Now we just have to upload the whole thing to Heroku
```bash$ git push heroku master```

Create the database on Heroku services
```bash$ heroku rake db:schema:load```

You can start to use your application !
```bash$ heroku open```

Input your admin credentials, add a first project and info about your organization and enjoy your Teambox!
<h2>Bonus: Integrate Google application to your Teambox (docs, agenda...)</h2>

Teambox come with an integration of Google tools through the whole platform : you can add Gdocs to your projects and comments, synchronise your calendar with Google Calendar, etc.

Accept terms of service. At this point, your domain is active but not yet registered.
Set up domain properties and provide authentication certificate.
<h4>Step 1 : Prove to Google that you own the domain.</h4>

First, you will need a Google Account - create one <a href="https://accounts.google.com/NewAccount">here</a>.
Then go to <a href="https://accounts.google.com/ManageDomains">Google webmaster tools</a> to register your Teambox to Google. Input your Teambox url <em>"http://my-teambox-name.heroku.com"</em> in the dedicated field. Then it will ask to chose a verification method. (if not click on manage domain below).

Open <em>"Alternate Method Tab"</em> and chose <em>"Add a meta tag to your site's home page"</em>.

Copy the meta-tag that Google gives to you.
```"html"]
<meta name="google-site-verification" content="a-really-complex-code-with-numbers-and-sign" />
```

Now you will have to add this meta-tag to our Heroku app for Google to find it.
Open the file <em> app/views/layouts/sites.haml</em> with your favorite text editor. If you have already seen HTML code, you will find that this language is a little bit strange. It is Haml (HTML Abstraction Markup Language) which is intends to help you to organize and maintain Xhtml code in an easy way. So we will have to translate the tag that Google gaves us (Html) to this Haml.
Here you go
```ruby
%meta{ :'name' => "google-site-verification", :content => "a-really-complex-code-with-numbers-and-sign" }
```
Take great care to intend this line so it is aligned with the others : use blank spaces, NOT tab.

After that we just save the changes with Git
```ruby
$ git commit -am"added google verification code"
```

Deploy those changes to Heroku
```ruby
$ git push heroku master
```

And we can go back to <a href="https://www.google.com/webmasters/verification/">Google Verification</a> and click on the <em>Verify </em> button. Then click on <em>Continue</em>. (You will have to register one admin and one organization inside Teambox for that to work)
<p style="text-align: center;"><img class="size-medium wp-image-293 aligncenter" title="Google verification success" src="/{{site.base_url}}/img/wp_blog/2011/09/Screen-shot-2011-09-14-at-下午02.18.04-300x64.png" alt="Google verification success" width="300" height="64" />
<h4>Step 2 :Accept Google's Terms of Services</h4>

Click on <em>Agree to the terms of Service</em> to authorize Google Apps to connect to Teambox. This one was easy, wasn't it?
<h4>Step 3 : Authentificate your website for a secure connexion</h4>

Now to authentificate your website, Google will ask you a <em>"Target URL path prefix"</em>. Just input your Teambox url, <em>"your-teambox-name.heroku.com</em> in this example. Add a short description. Then press "Save". It will give you a key and a secret code. Let's add them to our application to allow Teambox user accounts to communicate with Google Apps.

Open the file <em>config/teambox.yml</em> with your text editor. Look for the line 102
```ruby
# You can configure standard oauth provider here, or any supported omni-auth provider
# in the omni-auth initializer.
#
# providers:
# - :provider: github
# :key:
# :secret:
# - :provider: twitter
# :key:
# :secret:
# - :provider: facebook
# :key:
# :secret:
```

and make it looks like that:

```ruby
# You can configure standard oauth provider here, or any supported omni-auth provider
# in the omni-auth initializer.
#
providers:
- :provider: google
:key: add here your OAuth Consumer Key:
:secret: add here OAuth Secret Key:
# - :provider: twitter
# :key:
# :secret:
# - :provider: facebook
# :key:
# :secret:
```

Congrats, you have enabled Google to communicate with your Teambox!

Now when you log under Teambox and go to Settings, you have a <em>Linked Accounts</em> that appears on the bottom right. In the current version of teambox, it still a bug with Google auth, so you will have to add the changes below in order to fix it (thanks to <a href="https://teambox.com/public/teambox/conversations/76950-authenticating-with-google">Aaron Russel</a>.

1) First off, in lib/omni_auth/strategies/google.rb simply add this to the top:

```ruby
require "multi_json"
```

2) Then in app/controllers/auth_controller.rb make the following changes:

```ruby
# line 9 change to:
auth_hash = params[:auth] || symbolize_keys(request.env["omniauth.auth"])

# line 14 - not sure if that's meant to be an instance variable? Change to:
if current_user.app_links.find_by_provider(provider)

# after line 96 at end of class add the following method:
def symbolize_keys arg
case arg
when Array
arg.map { |elem| symbolize_keys elem }
when Hash
Hash[
arg.map { |key, value|
k = key.is_a?(String) ? key.to_sym : key
v = symbolize_keys value
[k,v]
}]
else
arg
end
end
```


Commit the changes and push them to heroku

```bash
$ git commit -am"added google services and fix google auth"
$ git push heroku master
```

Now you can go back on Preferences/Linked Account or directly click on the Gdocs icon above the homepage field. Just click to <em>Link account</em> and Google will ask you to grant rights to your Teambox account. Click on "Grant access" and you're done. You can now share Gdocs and synchronise Gcal with your Teambox !

<a href="/{{site.base_url}}/img/wp_blog/2011/09/Screen-shot-2011-09-14-at-下午03.33.34-e1315986461961.png"><img class="alignnone size-full wp-image-299" title="Google Docs + Teambox = great tools !" src="/{{site.base_url}}/img/wp_blog/2011/09/Screen-shot-2011-09-14-at-下午03.33.34-e1315986461961.png" alt="Gdocs and teambox" width="600" height="361" /></a>

Hope you'll enjoy using it !
