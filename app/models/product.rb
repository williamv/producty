class Product < ActiveRecord::Base
  attr_accessible :name, :overview
  has_many :goals, :dependent => :destroy
  validates :name, :presence => true
  validates :overview, :presence => true
end
