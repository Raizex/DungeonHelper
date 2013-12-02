class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :summary
      t.belongs_to :user

      t.timestamps
    end

    change_table :descriptions do |t|
    	t.belongs_to :character
    end
  end
end
