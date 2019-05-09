User.create(name: "Austen Hasty", location: "Seattle,Wa")   #user_id: 1
User.create(name: "Jens Vyff", location: "Seattle,Wa")      #user_id: 2
User.create(name: "Macy Donia", location: "1411 4th Ave, Seattle, WA 98101")     #user_id: 3

Restaurant.create(name: "13 Coins", cost: '$')    #restaurant_id: 1
Restaurant.create(name: "Subway", cost: '$$$')    #restaurant_id: 2
Restaurant.create(name: "Club 42", cost: '$$$$')  #restaurant_id: 3

Visit.create(user_id: 1, restaurant_id: 1)
Visit.create(user_id: 2, restaurant_id: 2)
Visit.create(user_id: 1, restaurant_id: 3)
