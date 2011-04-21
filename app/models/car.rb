class Car < ActiveRecord::Base

  attr_accessible :make, :model, :description
  
  validates :make, :presence => true
  validates :model, :presence => true
  validates :description, :presence => true



end
