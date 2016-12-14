class ReviewsController < ApplicationController
	def create
		@review = Review.create(review_params)
		
		respond_to do |format|
			format.js 
		end
	end

	private

	def review_params
		params.permit(:rating, :body, :product_id).merge(user_id: current_user.id)
	end
end