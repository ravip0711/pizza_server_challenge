class ToppingsController < ApplicationController
  def index
    @toppings = Topping.all
  end

  def create
  end
end
