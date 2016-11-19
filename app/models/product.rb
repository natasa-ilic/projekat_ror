class Product < ActiveRecord::Base
#pripada sellerima
	belongs_to :seller
end