class CreateAbilityScores < ActiveRecord::Migration
  def change
    create_table :ability_scores do |t|
      t.string :name
      t.integer :race_modifier
      t.integer :temp_modifier

      t.timestamps
    end
  end
end
