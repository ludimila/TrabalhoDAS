class AddPicturePaperclipToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :picture, :string
    add_column :animals, :picture_file_name, :string
    add_column :animals, :picture_content_type, :string
    add_column :animals, :picture_file_size, :integer
    add_column :animals, :picture_updated_at, :datetime
  end
end
