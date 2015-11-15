class CheckAdoted < ActiveRecord::Migration
  def change
    add_column :animals, :adopted, :boolean, :default => false
  end
end
