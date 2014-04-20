class AddImageToCampaigns < ActiveRecord::Migration
  def self.up
    add_attachment :campaigns, :image
  end

  def self.down
    remove_attachment :campaigns, :image
  end
end
