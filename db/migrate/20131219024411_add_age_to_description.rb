class AddAgeToDescription < ActiveRecord::Migration
  def change
    add_column :descriptions, :age, :string
  end
end
