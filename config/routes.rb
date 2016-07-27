Rails.application.routes.draw do
  
  root 'pizzas#index'


  resources :pizzas do
    resources :toppings, controller: :pizza_toppings
  end

  resources :toppings

  # get 'toppings/index'
  # get 'toppings/create'
  # get 'pizza_toppings/index'
  # get 'pizza_toppings/create'
  # get 'pizzas/index'
  # get 'pizzas/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
