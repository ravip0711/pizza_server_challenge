require 'rails_helper'

RSpec.describe Topping, type: :model do
  describe "Topping" do
    it "is invalid with a blank name" do
      topping = Topping.new
      expect(topping).to_not be_valid
    end

    it "is invalid if duplicate topping" do
      topping_1 = Topping.create(name: "Cheese")
      topping_2 = Topping.new(name: "Cheese")

      expect(topping_2).to_not be_valid
    end
  end
end
