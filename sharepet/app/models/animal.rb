class Animal < ActiveRecord::Base
  attr_accessible :age, :animalType, :breed, :name, :address
end
