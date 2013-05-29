require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  test "should create new product without an overview" do
  	p = Product.new(:name => "Lonely Product")
  	assert !p.save
   end

  test "should create new product without a name" do
  	p = Product.new(:overview => "Lonely Overview")
  	assert !p.save
   end

   test "should save a product with a name and an overview" do
   	p = Product.new(:name => "Good Product", :overview => "Good Overview")
   	assert p.save
   end

end




