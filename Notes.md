##Converting markdown to html
https://crates.io/crates/hoedown


##Sanitizing html input from users
https://github.com/earthreader/rust-earth


#$Notes 
*Window seperator will be based on the extension table
*Many to Many relation is based on the direct table
*All many to many has separate Windows, containing each others window instances
*Linker tables has no windows

##Indirect tables to indirect tables
How far down to the rabbit hole
* Most common table relation has 1 extension table and 1 many relation
* Do we include indirect relation from indirect relation

Notes:
* extension tables will be inlined with the main table.
has many will be inlined when there is only 1 in a table.
* multiple has many table will be listed as tabs with 1 default maybe opened. can be listed ordered by name alphabetically
server request round trips.
defaults will have to do a server round trip since it wouldnt know which record is opened.
* The record of the parent table will be used as filter for the records.
extension tables will be fecthed togehter with the main record since it is sure that there is only 1 extension record.
* If a table is a has many, does it make since to display its own windows, such case is, order_line, category

##Photos can be hosted in other sites like imgur
Photo columns:
* source_url - the source url photo when the user has it uploaded somewhere
* hosted_url - copy the phot and rehost it in these url
* data - contains the binary/base64 encoding of the data, serves as a backup when the hosted url expires, we can re-upload to there

Will have a photo checker daemon, which keeps uploading to expired hosted url(404).
The hosted url photo will be curled and converted into data, then uploaded into photo serving service like imgur.com

## Product.info
* This column should just be text, which is just a markdown syntax for displayin it in the weboage
* Store it as markdown, sanitized to html format, then display
* If the user wishes to reedit it, use the markdown equivalent, this way we have a continuity of edit and save and re-edit without transforming the original user input.
The html equivalent is stored for performace purpose. sanitized html equivalent is processed only after saved, reading the data is done multiple times, so we save performance.

##color pallete can be used to be as a mini theme of the window itself
https://github.com/jariz/vibrant.js/


## Deploying a heroku


$> heroku create bazaar-app --buildpack https://github.com/emk/heroku-buildpack-rust.git
Creating bazaar-app... done, stack is cedar-14
Buildpack set. Next release on bazaar-app will use https://github.com/emk/heroku-buildpack-rust.git.
https://bazaar-app.herokuapp.com/ | https://git.heroku.com/bazaar-app.git
Git remote heroku added

 * heroku remote is automatically added in the git project
 
$> git remote show heroku
* remote heroku
  Fetch URL: https://git.heroku.com/bazaar-app.git
  Push  URL: https://git.heroku.com/bazaar-app.git

$>git remote show heroku
* remote heroku
  Fetch URL: https://git.heroku.com/bazaar-app.git
  Push  URL: https://git.heroku.com/bazaar-app.git

$> git push heroku master


## Dockerfile
rsync -avzh bazaarust root@104.131.130.196:~/
ssh root@104.131.130.196

$> docker build -t bazaar .
$> docker run -p 8080:80 -t bazaar

interactive bash
$> docker run -i -t bazaar /bin/bash

104.131.130.196:8080
rsync -avzh bazaarust root@104.131.130.196:~/
