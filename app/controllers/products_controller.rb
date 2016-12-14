class ProductsController < ApplicationController
	
	before_action :authorize_user

	def index
		@products = Product.all
		
		unless params[:sort].blank?
			@products = @products.order(price: :asc)  if params[:sort] == 'price_asc'
			@products = @products.order(price: :desc) if params[:sort] == 'price_desc'
		end
		
		@products_for_poor_people = Product.ordered_cheap_products(100)
    @products_for_rich_guys   = Product.ordered_expensive_products(100)

    respond_to do |format|
    	format.html
    	format.json {render json: @products.to_json}
    	format.xml {render xml: @products.to_xml}

    end
	end
	
	def new
		@product = Product.new
	end
	
	def create
		@product = Product.new(product_params)
		
		if @product.save
			redirect_to root_path
		else
			render :new
		end
	end
	
	def edit
		@product = Product.find(params[:id])
	end
	
	def update
		@product = Product.find(params[:id])
		
		if @product.update_attributes(product_params)
			redirect_to root_path
		else
			render :edit
		end
	end
	
	def show
		@product = Product.find(params[:id])
	end

	private
	
	def product_params
		params.require(:product).permit(:name, :price, :about)
	end

end