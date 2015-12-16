class DishesController < ApplicationController
	def index
		@dishes = Dish.all
		render :index
	end
	def create
		restaurant = Restaurant.find(params[:restaurant_id])
		dish_params = params.require(:dish).permit(:dish_name, :dish_photo, :dish_description, :dish_price)
		@dish = Dish.create(dish_params)
		restaurant.dishes << @dish
		# @dish.restaurant_id = params[:id]
    	redirect_to "/restaurants/#{params[:restaurant_id]}/dishes"
	end
	def new
		@dish = Dish.new
		render :new
	end
	def edit
	end
	def show
		@dish = Dish.find(params[:id])
    	render :show
	end
	def update
	end
	def destroy
	end
end
