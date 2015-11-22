class IncludingAttachment < ActiveRecord::Migration
  def change
    add_column :animals, :attachment, :string
    add_column :users, :attachment, :string
  end
end
