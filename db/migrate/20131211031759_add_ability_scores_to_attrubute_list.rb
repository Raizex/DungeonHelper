class AddAbilityScoresToAttrubuteList < ActiveRecord::Migration
  def change
  		add_column :attribute_lists, :str, :integer
  		add_column :attribute_lists, :dex, :integer
  		add_column :attribute_lists, :con, :integer
  		add_column :attribute_lists, :int, :integer
  		add_column :attribute_lists, :wis, :integer
  		add_column :attribute_lists, :cha, :integer
  end
end
