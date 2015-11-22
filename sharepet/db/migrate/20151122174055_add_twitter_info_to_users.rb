class AddTwitterInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_image, :string
    add_column :users, :token, :string
    add_column :users, :secret, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
