class ChangeConversionTypeInCampaign < ActiveRecord::Migration
  def change
    change_column :campaigns, :conversion, :float
  end
end
