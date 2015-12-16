class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :restaurant_address
      t.string :restaurant_phone
      t.string :restaurant_website

      t.timestamps null: false

      # adds a foreign key
      t.belongs_to :user
    end
  end
end
