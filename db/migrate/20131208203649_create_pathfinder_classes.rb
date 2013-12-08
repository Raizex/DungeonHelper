class CreatePathfinderClasses < ActiveRecord::Migration
  def change
    create_table :pathfinder_classes do |t|
      t.string :class_name
      t.string :class_description
      t.string :hit_dice
      t.string :weapon_proficiencies
      t.string :armor_proficiencies
      t.string :class_skills
      t.string :class_abilities
      t.string :base_attack_bonuses
      t.string :base_saves

      t.timestamps
    end
  end
end
