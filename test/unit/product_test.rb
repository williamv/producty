require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  test "should not save product without name" do
     product = Product.new
     assert !product.save, "Saved the product without a name"
   end

  test "should not save product without product overview" do
     product = Product.new
     assert !product.save, "Saved the product without a product overview"
   end


end


