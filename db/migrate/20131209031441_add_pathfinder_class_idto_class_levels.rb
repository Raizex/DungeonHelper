class AddPathfinderClassIdtoClassLevels < ActiveRecord::Migration
  def change
  	remove_column :class_levels, :class_id, :integer
  	add_column :class_levels, :pathfinder_class_id, :integer
  end
end
