class Product < ActiveRecord::Base
#pripada sellerima
	belongs_to :seller
	
	validates :name, presence: true, length: { minimum: 2, maximum: 6 }
	validates :price, presence: true, numericality: true
	
	#validate_presence_of :name, :price
end