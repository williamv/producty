class Goal < ActiveRecord::Base
  attr_accessible :goal, :product_id
  belongs_to :product
end
