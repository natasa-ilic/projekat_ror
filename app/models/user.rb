class User < ActiveRecord::Base
	has_secure_password
	has_one :profile, dependent: :destroy

	has_many :orders
	has_many :products, through: :orders

end