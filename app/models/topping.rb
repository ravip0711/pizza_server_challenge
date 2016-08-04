class Topping < ApplicationRecord
  before_save { self.name = name.split.map(&:capitalize).join(' ') }

  has_many :pizza_toppings, dependent: :destroy
  has_many :pizzas, through: :pizza_toppings

  validates_presence_of :name
  validates_uniqueness_of :name, message: "already exists, please create a new topping name"
end
