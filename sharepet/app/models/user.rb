class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :password, :phone_number, :username, :zip_code, :attachment, :profile_image, :token, :secret, :provider, :uid
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  has_secure_password

def self.find_or_create_from_auth_hash(auth_hash)
  	user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
  	user.update_attributes(
  		name: auth_hash.info.name,
  		profile_image: auth_hash.info.image,
  		token: auth_hash.credentials.token,
  		secret: auth_hash.credentials.secret,
     	email: "email twitter",
     	password: "senha twitter",
     	attachment: "anexo teste"
  		)
  	user
  end

end
