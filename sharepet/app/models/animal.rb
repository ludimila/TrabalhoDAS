class Animal < ActiveRecord::Base
  attr_accessible :age, :animalType, :breed, :name
  scope :by_breed, -> breed { where(:breed => breed) }
end
