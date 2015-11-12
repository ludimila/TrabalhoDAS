class AddLatitudeAndLongitudeToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :latitude, :float
    add_column :animals, :longitude, :float
  end
end
