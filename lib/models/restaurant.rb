class Restaurant < ActiveRecord::Base
  has_many :visits
  has_many :users, through: :visits
  has_and_belongs_to_many :categories
  has_many :restaurant_categories
end
