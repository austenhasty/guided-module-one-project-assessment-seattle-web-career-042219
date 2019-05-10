class Category < ActiveRecord::Base
  has_and_belongs_to_many :restaurants
  has_many :restaurant_categories

  def self.rand_cat
  	Category.order(Arel.sql("RANDOM()")).first
  end	

end
