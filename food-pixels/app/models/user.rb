class User < ActiveRecord::Base
	has_many :restaurants, dependent: :destroy
	validates :username, presence: true, uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 254 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  	has_secure_password
end
