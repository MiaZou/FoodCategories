class FoodController < ApplicationController
  def index
    @food = Food.paginate(page: params[:page], per_page: 10)
  end

  private 

  def food_params
    params.require(:food).permit(:item, :category)
  end
end
