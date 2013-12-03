class CreateAttributeLists < ActiveRecord::Migration
  def change
    create_table :attribute_lists do |t|

      t.belongs_to :character

      t.timestamps
    end
  end
end
