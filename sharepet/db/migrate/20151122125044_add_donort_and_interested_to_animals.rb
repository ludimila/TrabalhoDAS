class AddDonortAndInterestedToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :donor, :string
    add_column :animals, :interested, :string
  end
end
