class Pizza < ApplicationRecord
  before_save { self.name = name.capitalize }
  
  has_many :pizza_toppings, dependent: :destroy
  has_many :toppings, through: :pizza_toppings

  validates_presence_of :name
  validates_length_of :topping_ids, minimum: 1, message: "You must select at least 1 topping"
end
