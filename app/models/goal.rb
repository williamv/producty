class Goal < ActiveRecord::Base
  attr_accessible :goal, :product_id, :size, :completion_percentage
  belongs_to :product
  
  validates :goal,:presence => true
  validates :size,:presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :completion_percentage,:presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
end
