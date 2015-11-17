class AddAddressToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :address, :string
  end
end
