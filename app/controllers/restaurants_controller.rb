class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save

    redirect_to restaurant_path(restaurant)
  end

  def new
    @restaurants = Restaurant.new
  end

  def edit
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
