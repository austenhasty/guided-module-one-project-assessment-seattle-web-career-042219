# FOODME

FOODME is a Ruby-based CLI program meant to be the answer to the age old question, "What do you want for dinner?"
No need to ask that question ever again! Now FOODME can tell you exactly what you want in just a matter minutes!

Data provided by https://www.yelp.com/

## Installation and Setup

1. Make sure Ruby is installed in your terminal 
  * `ruby -v` will tell you what version you have installed
  
2. Fork and clone the repository from https://github.com/austenhasty/guided-module-one-project-assessment-seattle-web-career-042219

3. Aquire a key for the Yelp Fusion API from: https://www.yelp.com/developers/documentation/v3/authentication (follow the steps on the website)

4. Using your Yelp Api key make a .env file as shown, but replace the blank with your api key

5. Run these commands in your terminal
* `bundle install` to install gems
* `rake db:migrate` to set up the database
* `ruby db/seeds.rb` to seed the database


## RUNNING THE PROGRAM

In order to make sure everything runs smoothly, please make sure you have a couple things:

Run the program by typing: `ruby bin/run.rb`


## CREDITS

This product was created by @jkvyff and @austenhasty

Gems: source "https://rubygems.org"
```
  gem 'dotenv'
  gem "sinatra-activerecord"
  gem "sqlite3"
  gem "pry"
  gem "require_all"
  gem "faker"
  gem "http"
  gem 'activerecord-import'
```
