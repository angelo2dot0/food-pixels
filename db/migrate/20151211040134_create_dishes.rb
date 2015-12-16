class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.string :dish_photo
      t.string :dish_description
      t.string :dish_price

      t.timestamps null: false

      # adds a foreign key
      t.belongs_to :restaurant
    end
  end
end
