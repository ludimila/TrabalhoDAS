class IncludingAttachment < ActiveRecord::Migration
  def change
    add_column :animals, :attachment, :string
  end
end
