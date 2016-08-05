require 'rails_helper'

RSpec.describe Pizza, type: :model do
  
  describe "Pizza" do
    it "is invalid with a blank name" do
      pizza = Pizza.new
      expect(pizza).to_not be_valid
    end

    it "is invalid without at least one topping selected" do
      pizza = Pizza.new(name: "Cheese")
      expect(pizza).to_not be_valid
    end
  end

  describe "Pizza.description" do
    it "is invalid if description is blank" do
      pizza = Pizza.new(name: "cheese", description: nil)
      expect(pizza).to_not be_valid
    end
  end

end
