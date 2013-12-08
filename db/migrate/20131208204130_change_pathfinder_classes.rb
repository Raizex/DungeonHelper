class ChangePathfinderClasses < ActiveRecord::Migration
  def change
  	remove_column :pathfinder_classes, :class_description, :string
  	add_column :pathfinder_classes, :role, :string
  	add_column :pathfinder_classes, :available_alignments, :string
  	add_column :pathfinder_classes, :starting_wealth, :string
  	add_column :pathfinder_classes, :base_skill_ranks_per_level, :int
  	add_column :pathfinder_classes, :class_spells_per_day, :string
  	add_column :pathfinder_classes, :spell_list_type, :string
  	add_column :pathfinder_classes, :bonus_languages, :string
  	add_column :pathfinder_classes, :miscelaneous_features, :string
  end
end
