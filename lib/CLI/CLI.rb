require 'dotenv/load'

module CLI
  def self.get_location_from_name(name)
    user = User.find_by(name: name) 
    user[:location]
  end

  def self.location_for_user(name)
    (name_in_database?(name) ? get_location_from_name(name) : fill_profile(name))
  end

  def self.get_location
   puts 
   print "                             "
   print "Please enter a specific address: "
   gets.chomp
  end

  def self.ask_question(num)
    system "clear"
    case num
    when 1
      print q1_page
      gets.chomp
    when 2
      print q2_page
      gets.chomp
    when 3
      print q3_page
      gets.chomp
    end
  end

  def self.name_in_database?(name)
    User.find_by(name: name) ? true : false
  end

  def self.fill_profile(name)
    location = get_location
    User.create(name: name, location: location)
    location
  end

  def self.welcome
    system "clear"
    print welcome_page
    gets.chomp
  end

  def self.choices_to_api_call(user_id, ans1, ans2, ans3)
    ans1 = ans1.to_s
    ans1 == '3' ? ans1 = '3, 4' : ans1
    case ans2
    when '1'
      ans2 = 5000
    when '2'
      ans2 = 10000
    when '3'
      ans2 = 20000
    end

    user_loc = User.find(user_id)[:location]

    case ans3
    when '1'
      visits = Visit.where(user_id: user_id)
      rand_restaurant_id = visits.sample[:restaurant_id]
      rest_yelp_id = Restaurant.find_by(id: rand_restaurant_id)[:yelp_id]
      rec = YelpApi.idSearch(rest_yelp_id)
    when '2'
      rand_category = Category.rand_cat[:title]
      rec = YelpApi.search(user_loc, rand_category, ans1, ans2)['businesses'][0]
    else
      rec = YelpApi.search(user_loc, ans3, ans1, ans2)['businesses'][0]
    end
    recommendation = rec
  end

  def self.print_restaurant(rest_hash)
    system "clear"
    val = 110
    13.times do puts end
    puts "Name: #{rest_hash["name"]}".center(val)
    puts
    puts "Rating: #{rest_hash["rating"]}/5    Price: #{rest_hash["price"]}".center(val)
    puts
    puts "Phone: #{rest_hash["phone"]}".center(val)
    puts
    puts "URL: #{rest_hash["url"]}".center(val)
    6.times do puts end
  end

  def self.save_restaurant(user_id, rest_hash)
    puts "Do you wish to save #{rest_hash["name"]} to your visits?".center(110)
    puts
    print "Type 's' to save or 'q' to quit: ".rjust(70)
    input = gets.chomp
    if input == "s" || input == "save"
      new_rest = Restaurant.create(name: rest_hash["name"], cost: rest_hash["price"], yelp_id: rest_hash["id"])
      Visit.create(user_id: user_id, restaurant_id: new_rest[:id])
    end
    system "clear"
  end

  def self.run_app
    print "\e[4;500;800t"
    user_name = welcome
    location = location_for_user(user_name)
    user_id = User.find_by(name: user_name)[:id]

    ans1 = ask_question(1)
    ans2 = ask_question(2)
    ans3 = ask_question(3)
    
    rest_json = choices_to_api_call(user_id, ans1, ans2, ans3)
    print_restaurant(rest_json)
    save_restaurant(user_id, rest_json)
  end
end
