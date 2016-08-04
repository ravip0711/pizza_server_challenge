class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)


    unless pizza_params[:topping_ids].nil?
      str = []
      pizza_params[:topping_ids].each do |topping_id|
        str << Topping.find(topping_id).name
      end
      @pizza.description = str.join(", ")
    end

    if @pizza.save
      redirect_to root_path
    else
      render new_pizza_path(@pizza)
    end
  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def show
  end

  def update
    @pizza = Pizza.find(params[:id])

    str = []
    pizza_params[:topping_ids].each do |topping_id|
      str << Topping.find(topping_id).name
    end
    @pizza.description = str.join(", ")
    
    if @pizza.update(pizza_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    pizza = Pizza.find(params[:id])
    if pizza.destroy
      redirect_to root_path
    else
      render :form
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, topping_ids: [])
  end
end
