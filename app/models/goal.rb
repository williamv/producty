class Goal < ActiveRecord::Base
  attr_accessible :goal, :product_id, :size, :completion_percentage
  belongs_to :product
end
