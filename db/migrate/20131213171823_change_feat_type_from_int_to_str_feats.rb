class ChangeFeatTypeFromIntToStrFeats < ActiveRecord::Migration
  def change
  	remove_column :feats, :feat_types, :integer
  	add_column :feats, :feat_types, :string
  end
end
