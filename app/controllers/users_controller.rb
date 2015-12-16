class UsersController < ApplicationController

	before_action :logged_in?, only: [:show]

	def index
		@users = User.all
 		render :index
	end
	def create
		user_params = params.require(:user).permit(:username, :email, :first_name, :last_name, :password)
		@user = User.create(user_params)
		login(@user)
    	redirect_to "/users/#{@user.id}"
	end
	def new
		@user = User.new
		render :new
	end
	def edit
	end
	def show
		@user = User.find(params[:id])
    	render :show
	end
	def update
	end
	def destroy
	end
end
