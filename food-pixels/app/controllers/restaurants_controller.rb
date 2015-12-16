class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
		render :index
	end
	def create
		@user = current_user
		restaurant_params = params.require(:restaurant).permit(:restaurant_name, :restaurant_address, :restaurant_phone, :restaurant_website)
		@restaurant = Restaurant.create(restaurant_params)
		# redirect_to user_restaurants(@user.id)
    	#redirect_to "/users/#{@user.id}/restaurants"
    	redirect_to "/restaurants"
	end
	def new
		@restaurant = Restaurant.new
		render :new
	end
	def edit
	end
	def show
		@restaurant = Restaurant.find(params[:id])
    	render :show
	end
	def update
	end
	def destroy
	end
end
