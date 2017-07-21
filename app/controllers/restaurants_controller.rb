class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = current_user.restaurants.build
  end

  def create
    @restaurant = current_user.restaurants.build(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Successfully added a new restaurant."
      redirect_to root_path
    else
      flash[:alert] = "Oops something went wrong. Couldn't add this restaurant."
      render :new
    end
  end

  def edit; end

  def update
    if @restaurant.update_attributes(restaurant_params)
      flash[:notice] = "Successfully added a new restaurant."
      redirect_to restaurants_path
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
    flash[:notice] = "Resturant has been deleted."
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :street_address, :zip_code)
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end