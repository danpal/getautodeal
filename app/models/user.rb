class User < ActiveRecord::Base
  attr_accessible :zip_code, :make, :model, 
                  :make2, :model2,
                  :make3, :model3, 
                  :name, :phone, :email,
                  :description


  validates  :zip_code, :presence => true, :on => :create
  validates  :make, :presence => true, :on => :create
  validates  :model, :presence => true, :on => :create

  validates :name, :presence => true, :on => :update
  validates :email, :presence => true, :on => :update
  validates :phone, :presence => true, :on => :update
  
end
