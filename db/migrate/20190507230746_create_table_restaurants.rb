class CreateTableRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cost
      t.string :yelp_id
    end
  end
end
