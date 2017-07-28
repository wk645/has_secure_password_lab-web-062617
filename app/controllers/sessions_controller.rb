class SessionsController < ApplicationController

	def create
		@user = User.find_by(name: params[:user][:name])
		# return head(:forbidden) unless @user.authenticate(params[:password])
		# session[:user_id] = @user.id

		if @user && @user.authenticate(params[:user][:password])
			session[:user_id] = @user.id
			redirect_to user_path
		else
			flash[:message] = "We could not find a user with that username or password"
			redirect_to login_path
		end
	end

end
