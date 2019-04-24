# Clément Renaud's Writings

This repo contains things I wrote over the course of the years.

The goals are :

- prove to myself that I can write (lol)
- consolidate previous writings into a single repo
- exit platforms and own my things locally
- convert everything into markdown (with meta and date)
- run some stats / generators for fun
- document how to do all that

## TODO

- Dig Archives
  - [ ] Where did I write again?
  - [ ] old github repos
  - [ ] look through
  - [ ] list media archives (interviews, etc)
- Backup
  - [x] Quora
  - [X] Blogspot
  - [ ] Tumblr Blog
  - [ ] Quora fr (require some date conversion)
  - [ ] Scientific papers and conferences
  - [ ] Jekylls (Ecriture Exemplaire, RW, etc)
  - [ ] old Wordpress Blog
  - [ ] twitter (worth it ?)
  - [ ] facebook (worth it ?)
- Convert
  - [ ] Define proper meta format
  - [ ] HTML > markdown
- Tools
  - [ ] make UI / website
  - [ ] proper indexation for easy search
  - [ ] words/ signs counter
  - [ ] trending words


## How To

### Backup Quora

1. Used https://github.com/t3nsor/quora-backup to backed things up and clean up html (successfully followed instructions).
2. Run `./bin/quora_convert_to_md.sh` to convert to md with proper names and dates (requires [pandoc](http://pandoc.org))
3. Manually copy PNG files to an `img` folder and find/replace `![](main-qimg` to fix paths

### Backup Blogspot

1. Get XML file from admin panel Settings/Others/Backup
2. Run `node bin/blogger2jekyll YOUR_FILE.xml _posts` to convert (based on a modified version of [blogger2jekyll](https://github.com/solderjs/blogger2jekyll))
