class AddRaceIdToCharacterRemoveCharacterIdFromRace < ActiveRecord::Migration
  def change
    add_column :characters, :race_id, :string
  	remove_column :races, :character_id, :string
  end
end
