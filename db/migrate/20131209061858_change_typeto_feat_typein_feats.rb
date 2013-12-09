class ChangeTypetoFeatTypeinFeats < ActiveRecord::Migration
  def change
  	remove_column :feats, :type, :integer
  	add_column :feats, :feat_types, :integer
  end
end
