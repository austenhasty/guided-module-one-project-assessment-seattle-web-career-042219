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
<img src="https://raw.githubusercontent.com/austenhasty/guided-module-one-project-assessment-seattle-web-career-042219/f305ac4ab37d206689961e1408c8f9a129139692/assets/env_example.png" width="300">

5. Run these commands in your terminal
* `bundle install` to install gems
* `rake db:migrate` to set up the database
* `rake seed` to seed the database


## RUNNING THE PROGRAM

In order to make sure everything runs smoothly, please make sure you have a couple things:

Run the program by typing: `ruby bin/run.rb`

<img src="https://raw.githubusercontent.com/austenhasty/guided-module-one-project-assessment-seattle-web-career-042219/f305ac4ab37d206689961e1408c8f9a129139692/assets/explain_program.gif" width="400">

On start user is given prompt to enter their name.
If you have used app before, you jump right into the questions.
If not, we ask for your address(Specific addresses help with search)
- use format "Street address, City, State, Zipcode for best results.

Three questions are asked, with Three choices each.
- Question 1 is about price.
- Question 2 is about distance you want to travel.
- Question 3 gives more freedom but 
 1. gives you a random selection from your previously visited. 
 2. gives you a random selection based on the previous 2 questions
 3. lets you enter a string of a food you love and we do our best to get a restaurant that has that food and matches your previous criteria.
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
