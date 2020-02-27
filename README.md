# Clément Renaud's Writings

This repo contains things I wrote over the course of the years.

The goals are :

- consolidate previous writings into a single repo
- exit platforms and own my things locally
- convert everything into markdown (with meta and date)
- run some stats / generators for fun
- document how to do all that

## TODO

- Backup
  - [ ] Where did I write again?
  - [x] Quora
  - [X] Blogspot
  - [x] Tumblr Blogs
  - [x] Jekyll RW
  - [x] old Wordpress Blog
  - [x] Ecriture Exemplaire
  - [x] twitter (not worth it ?)
  - [x] facebook (not worth it ?)
  - [x] Media archives from https://clementrenaud.com/cv
  - [x] Instagram
  - [ ] Scientific papers and conferences
  - [ ] Quora fr (require some date conversion)
  - [ ] other github repos
- Convert
  - [x] Define proper meta format: date, title, source, original_url
  - [x] HTML > markdown
- Tools / stats
  - [x] make UI / website
  - [x] words/ signs counter
  - [ ] proper indexation for easy search
  - [ ] trending words


## How To

### Backup Quora

1. Used https://github.com/t3nsor/quora-backup to backed things up and clean up html (successfully followed instructions). -- NB: after retrying to update, this is not working anymore. Looks like quora has blocked crawling (Feb 27 2020)
2. Run `./bin/quora_convert_to_md.sh` to convert to md with proper names and dates (requires [pandoc](http://pandoc.org))
3. Manually copy PNG files to an `img` folder and find/replace `![](main-qimg` to fix paths

### Backup Blogspot

1. Get XML file from admin panel Settings/Others/Backup
2. Run `node bin/blogger2jekyll YOUR_FILE.xml _posts` to convert (based on a modified version of [blogger2jekyll](https://github.com/solderjs/blogger2jekyll))

### Backup Tumblr

Very straightforward: just use the official [Jekyll importer](https://import.jekyllrb.com/docs/tumblr/), then some grep/replace to fix folders.

```
bundle exec jekyll import tumblr --url=http://clementrenaud.tumblr.com --format=md --grab_images --rewrite_urls
```

NB: Add some trouble due to GRDP policy that were preventing API calls... Finally found [a fix](https://github.com/jekyll/jekyll-import/issues/379).

### Import old Wordpress DBs

```
brew install mysql

mysql.server start

mysql > CREATE USER 'wp_user'@'localhost' IDENTIFIED BY '$PASSWORD';
mysql > GRANT ALL PRIVILEGES ON * . * TO 'wp_user'@'localhost';

# import data
mysql -u wp_user -p$PASSWORD < $SQL_FILE_PATH

# import to jekyll
ruby -r rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordPress.run({
      "dbname"         => "clemsos_wp",
      "user"           => "wp_user",
      "password"       => "$PASSWORD",
      "table_prefix"   => "wp2_",
      "site_prefix"    => "",
      "clean_entities" => false,
      "extension"      => "md",
      "status"         => ["publish"]
    })'

```

### Backup Instagram

The new registration process to use Instagram API (aka Facebook Developer Application) is so fastidious that I gave up altogether. Only in China I remembered having to submit such long and detailed application to get an API key.

Anyway, you can request your data in your profile page (web version only), then from that you will need some reformat.

### Backup Twitter & Facebook

Twitter and Facebook both offer a fairly complete data takeaway. You can request all your data from our profile, then process it as you wish. To reduce the noise I'll keep these but as archive only. I am pretty sure there are some interesting posts with original writings there but I don't have the courage to go through all this today. Maybe someday I will...
