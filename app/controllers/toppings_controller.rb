class ToppingsController < ApplicationController  
  def index
    @toppings = Topping.all
  end

  def new
    @topping = Topping.new
  end

  def create
    @topping = Topping.new(topping_params)
    if @topping.save
      redirect_to toppings_path
    else
      render :new
    end
  end

  def destroy
    topping = Topping.find(params[:id])
    if topping.destroy
      redirect_to toppings_path
    end
  end

  private

  def topping_params
    params.require(:topping).permit(:name)
  end
end
