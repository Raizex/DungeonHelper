class RemoveNameFromDescription < ActiveRecord::Migration
  def change
  	remove_column :descriptions, :name, :string
  end
end
