class CreateFeatAssignments < ActiveRecord::Migration
  def change
    create_table :feat_assignments do |t|
      t.integer :character_id
      t.integer :feat_id

      t.timestamps
    end
  end
end
