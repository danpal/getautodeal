class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :zip_code
      t.string :phone
      t.string :email
      t.string :make
      t.string :model
      t.string :make2
      t.string :model2
      t.string :make3
      t.string :model3
      t.text   :description
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
