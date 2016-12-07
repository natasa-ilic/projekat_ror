class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :product

	before_create :calculate_total

	private

	def calculate_total
		total = (quantity * product.price) if quantity.present?
	end
end