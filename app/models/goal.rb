class Goal < ActiveRecord::Base
  attr_accessible :goal, :product_id, :size, :completion_percentage
  belongs_to :product
  
  validates :goal,:presence => true
  validates :size,:presence => true 
  validates :completion_percentage,:presence => true 
end
