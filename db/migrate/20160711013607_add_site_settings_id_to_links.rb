class AddSiteSettingsIdToLinks < ActiveRecord::Migration
  def change
  	add_column :links, :site_setting_id, :integer
  end
end
