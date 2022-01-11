require 'rails_helper'
require 'product.rb'
RSpec.describe Product, type: :model do
 describe 'Validations' do
    # validation tests/examples here
  before (:each) do
   @category = Category.create!(name: 'products')
   @product = Product.create!(name: 'donuts', price_cents: 25, quantity: 4, category:  @category)
  end

 it "has a all fields set" do
  expect(@product).to be_present
 end

 it "doesn't have a name" do
  @product.name = nil
  expect(@product).to_not be_valid
 end

 it "doesn't have a price" do
  @product.price_cents = nil 
  expect(@product).to_not be_valid
 end

 it "doesn't define a quantity" do
  @product.quantity = nil
  expect(@product).to_not be_valid
 end
 
 it "doesn't belong to a category" do
  @product.category = nil
  expect(@product).to_not be_valid
 end

 end
end 