class Restaurant < ActiveRecord::Base
	belongs_to :user
	has_many :dishes, dependent: :destroy
	validates :restaurant_name, presence: true, uniqueness: true
end
