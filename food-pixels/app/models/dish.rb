class Dish < ActiveRecord::Base
	belongs_to :restaurant
	validates :dish_name, presence: true
	validates :dish_photo, presence: true
end
