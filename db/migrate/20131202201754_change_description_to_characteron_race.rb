class ChangeDescriptionToCharacteronRace < ActiveRecord::Migration
  def change
  	reversible do |dir|
  	  	dir.up   { remove_column :races, :description_id, :integer; add_column :races, :character_id, :integer }
  		dir.down { remove_column :races, :character_id, :integer; add_column :races, :description_id, :integer}
  	end
  end
end
