class Seller < ActiveRecord::Base
	has_many :products
	#seller ima vise proizvoda i bukvalno tako pisemo
end
