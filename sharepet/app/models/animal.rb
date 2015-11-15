class Animal < ActiveRecord::Base
  attr_accessible :age, :animalType, :breed, :name, :adopted
  # scope :by_breed, -> breed { where( :breed => breed) }
  scope :by_breed, -> breed { where( "lower(animals.breed) like lower(?)", "%#{breed}%") }
end
