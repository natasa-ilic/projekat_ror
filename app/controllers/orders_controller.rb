class OrdersController < ApplicationController

	def index
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)

		if @order.save
			redirect_to orders_path(@order)
		else
			render :new
		end
	end

	def show
		@order = Order.find(params[:id])
	end

	private

	def order_params
		params.require(:order).permit(:product_id, :user_id, :quantity)
	end

end