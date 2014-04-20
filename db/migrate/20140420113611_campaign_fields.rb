class CampaignFields < ActiveRecord::Migration
  def change
    add_column :campaigns, :name, :string
    add_column :campaigns, :link, :string
  end
end
