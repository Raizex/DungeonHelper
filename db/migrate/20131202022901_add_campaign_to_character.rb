class AddCampaignToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :campaign, :string
  end
end
