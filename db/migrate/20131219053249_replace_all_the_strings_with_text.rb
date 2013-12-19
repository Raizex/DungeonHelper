class ReplaceAllTheStringsWithText < ActiveRecord::Migration
  def change
  	remove_column :feats, :description, :string
  	add_column :feats, :description, :text

  	remove_column :feats, :prerequisites, :string
  	add_column :feats, :prerequisites, :text

  	remove_column :feats, :prerequisite_feats, :string
  	add_column :feats, :prerequisite_feats, :text

  	remove_column :races, :race_description, :string
  	add_column :races, :race_description, :text

  	remove_column :races, :available_languages, :string
  	add_column :races, :available_languages, :text


  	remove_column :pathfinder_classes, :weapon_proficiencies, :string
  	add_column :pathfinder_classes, :weapon_proficiencies, :text

  	remove_column :pathfinder_classes, :class_skills, :string
  	add_column :pathfinder_classes, :class_skills, :text

  	remove_column :pathfinder_classes, :class_abilities, :string
  	add_column :pathfinder_classes, :class_abilities, :text

  	remove_column :pathfinder_classes, :base_attack_bonuses, :string
  	add_column :pathfinder_classes, :base_attack_bonuses, :text

  	remove_column :pathfinder_classes, :base_saves, :string
  	add_column :pathfinder_classes, :base_saves, :text

  	remove_column :pathfinder_classes, :role, :string
  	add_column :pathfinder_classes, :role, :text
  end
end
