class ChangeDescriptionsHeightAndWeight < ActiveRecord::Migration
  def change
  	reversible do |dir|
  	  change_table :descriptions do |t|
  	  	dir.up   { t.change :height, :string; t.change :weight, :string}
  		dir.down { t.change :height, :integer; t.change :weight, :integer}
  	  end
  	end
  end
end
