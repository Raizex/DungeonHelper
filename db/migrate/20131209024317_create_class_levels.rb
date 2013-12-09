class CreateClassLevels < ActiveRecord::Migration
  def change
    create_table :class_levels do |t|
      t.integer :level
      t.integer :class_id
      t.integer :character_id

      t.timestamps
    end
  end
end
