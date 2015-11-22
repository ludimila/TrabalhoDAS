class Animal < ActiveRecord::Base

  attr_accessible :age, :animalType, :breed, :name, :adopted, :attachment, :address, :latitude, :longitude
  # scope :by_breed, -> breed { where( :breed => breed) }
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader
  scope :by_breed, -> breed { where( "lower(animals.breed) like lower(?)", "%#{breed}%") }
  scope :only_available, -> { where(adopted: false) }
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
