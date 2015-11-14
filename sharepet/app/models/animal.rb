class Animal < ActiveRecord::Base
  attr_accessible :age, :animalType, :breed, :name, :adopted
  # scope :by_breed, -> breed { where( :breed => breed) }
  scope :by_breed, -> breed { where( "lower(animals.breed) like lower(?)", "%#{breed}%") }
  scope :only_available, -> { where(adopted: false) }
  attr_accessor :picture_file_name
  attr_accessor :picture_content_type
  attr_accessor :picture_file_size
end
