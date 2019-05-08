class Visit < ActiveRecord::Base
  belongs_to :users
  belongs_to :restaurants
end
