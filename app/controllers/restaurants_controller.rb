class RestaurantsController < ApplicationController
  RESTAURANT_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  # before_action :find_restaurant, only: [ :chef ]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @categories = RESTAURANT_CATEGORIES
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: "Restaurant #{@restaurant.name} as been added successfully"
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant: params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
