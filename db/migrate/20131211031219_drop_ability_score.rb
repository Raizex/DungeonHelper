class DropAbilityScore < ActiveRecord::Migration
  def up
  	drop_table :ability_scores
  end

  def down
  	create_table :ability_scores do |t|
  		t.string   "name"
    	t.integer  "race_modifier"
    	t.integer  "temp_modifier"
    	t.datetime "created_at"
    	t.datetime "updated_at"
    	t.integer  "score"
	end
  end
end
