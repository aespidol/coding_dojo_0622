class UsersController < ApplicationController
	def login
		user = User.find_by(email:params[:Email])
		session[:user_id] = user.id
		if user.authenticate(params[:Password]) == false
			flash[:notice] = "invalid"
			redirect_to :back
		else
			redirect_to action: :show, controller: 'users', id: user.id
		end
	end
	def show
		@user = User.find(params[:id])
	end
	def create
	end
end
