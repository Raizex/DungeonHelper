class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :name
      t.string :alignment
      t.string :player
      t.string :deity
      t.string :homeland
      t.string :gender
      t.integer :height
      t.integer :weight
      t.string :eyes
      t.string :hair

      t.timestamps
    end
  end
end
