class SessionsController < ApplicationController
	def new

	end

	def create
		#@user = User.find_by(email: params[:email])
		@user = User.where(email: params[:email]).last

		if @user && @user.authenticate(params[:password])
			session[:user] = @user.id
			flash[:notice] = "Logged in successfully :)"
			redirect_to products_path
		else
			flash[:error] = "Incorrect email or password :'("
			render :new
		end
	end

	def destroy
		session.delete(:user)
		redirect_to new_session_path
	end
end