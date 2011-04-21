class User < ActiveRecord::Base
  attr_accessible :zip_code, :make, :model, 
                  :make2, :model2,
                  :make3, :model3, 
                  :name, :phone, :email,
                  :description


  validates  :zip_code, :presence => true, :format => {:with => /^\d{5}(-?\d{4})?$/}, :on => :create
  validates  :make, :presence => true, :on => :create
  validates  :model, :presence => true, :on => :create

  #the second form is where this values are asked for
  validates :name,  :presence => true, :on => :update
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, :on => :update 
  validates :phone, :presence => true, :on => :update
  
end
