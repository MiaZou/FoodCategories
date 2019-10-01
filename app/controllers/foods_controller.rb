class FoodsController < ApplicationController
  def index
    @food = Food.paginate(page: params[:page], per_page: 10)
  end

  def new
    @food = Food.new
  end

  def create
    Food.create(food_params)
    redirect_to root_path
  end

  private 

  def food_params
    params.require(:food).permit(:item, :category)
  end
end
