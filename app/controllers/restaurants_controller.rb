class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    def create
      @restaurant = Restaurant.new(restaurant_params)

      if @restaurant.save
        redirect_to @restaurant, notice: 'Restaurant was successfully created.'
      else
        render :new
      end
    end
  end

end
