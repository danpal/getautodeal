class User < ActiveRecord::Base
  attr_accessible :name, :zip_code, :phone, :email, :make, :model, :make2, :make3,
                  :model3

end
