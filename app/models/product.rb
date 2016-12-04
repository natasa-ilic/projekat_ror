class Product < ActiveRecord::Base
#pripada sellerima
	belongs_to :seller
	
	validates :name, presence: true, length: { minimum: 2, maximum: 6 }
	validates :price, presence: true, numericality: true
	
	#validate_presence_of :name, :price
	
	scope :ordered_by_price,           -> {order(price: :desc)}
	scope :cheap_products,             -> (number) {where('price < ?', number)}
	scope :expensive_products,         -> (number) {where('price > ?', number)}
	scope :ordered_cheap_products,     -> (number) {cheap_products(number).ordered_by_price}
	scope :ordered_expensive_products, -> (number) {expensive_products(number).ordered_by_price}
	
end