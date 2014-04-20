class AddCountFieldsToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :show, :integer
    add_column :campaigns, :click, :integer
    add_column :campaigns, :conversion, :integer

  end
end
