class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :zip_code
      t.string :address

      t.timestamps
    end
  end
end
