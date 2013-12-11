class AddScoreToAbilityScore < ActiveRecord::Migration
  def change
  	add_column :ability_scores, :score, :integer
  end
end
