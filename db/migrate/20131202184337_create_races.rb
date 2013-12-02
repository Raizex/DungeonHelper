class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :race_name
      t.string :race_description
      t.string :size
      t.string :attribute_modifiers
      t.string :default_languages
      t.string :available_languages
      t.belongs_to :description

      t.timestamps
    end
  end
end
