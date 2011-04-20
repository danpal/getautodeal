class User < ActiveRecord::Base
  attr_accessible :zip_code, :make, :model, :make2, :make3, :model3, :name, :phone, :email
end
