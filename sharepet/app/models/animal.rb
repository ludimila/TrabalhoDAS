class Animal < ActiveRecord::Base
  attr_accessible :age, :animalType, :breed, :name, :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
