User.create(name: "Austen Hasty", location: "Seattle,Wa")   #user_id: 1
User.create(name: "Jens Vyff", location: "Seattle,Wa")      #user_id: 2
User.create(name: "Macy Donia", location: "1411 4th Ave, Seattle, WA 98101")     #user_id: 3

Restaurant.create(name: "13 Coins", cost: '1', yelp_id: "SwIjpF_x-bN4dS0lUY-oZw")    #restaurant_id: 1
Restaurant.create(name: "Subway", cost: '3', yelp_id: "4bAFgGEzbK6tWiRF0k4SKA")    #restaurant_id: 2
Restaurant.create(name: "Club 42", cost: '4', yelp_id: "fGAKiSlodVstSPAITFu_MA")  #restaurant_id: 3

Visit.create(user_id: 1, restaurant_id: 1)
Visit.create(user_id: 2, restaurant_id: 2)
Visit.create(user_id: 1, restaurant_id: 3)
Visit.create(user_id: 2, restaurant_id: 3)

category_col = [ :title ]
category_cntry = [['American'], ['Australian'], ['Brazilian'], ['Canadian'], ['Chinese'], ['English'], ['French'], ['German'], ['Indian'], ['Italian'], ['Japanese'], ['Korean'], ['Pakistani'], ['Scottish'], ['South African'], ['Sri Lankan'], ['United Kingdom'], ['Vietnamese']] 
	# From "https://en.wikipedia.org/wiki/Category:Lists_of_foods"
Category.import category_col, category_cntry




