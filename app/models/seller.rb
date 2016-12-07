class Seller < ActiveRecord::Base
	has_many :products
	#seller ima vise proizvoda i bukvalno tako pisemo

	validates :name, presence: true, length: { minimum: 2, maximum: 10 }

end
