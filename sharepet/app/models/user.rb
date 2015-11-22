class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :password, :phone_number, :username, :zip_code, :attachment, :profile_image, :token, :secret, :provider, :uid
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  has_secure_password
end
