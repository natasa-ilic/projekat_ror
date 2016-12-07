class User < ActiveRecord::Base
	has_one :profile, dependent: :destroy

	has_many :orders
	has_many :products, through: :orders
end