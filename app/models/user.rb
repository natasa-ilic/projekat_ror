class User < ActiveRecord::Base
	has_secure_password

	has_one :profile, dependent: :destroy

	has_many :orders
	has_many :bought_products, through: :orders, class_name: 'Product'

	has_many :review
	has_many :reviewed_products, through: :reviews, class_name: 'Product'
end