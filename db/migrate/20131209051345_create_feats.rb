class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :prerequisites
      t.string :prerequisite_feats
      t.string :link

      t.timestamps
    end
  end
end
