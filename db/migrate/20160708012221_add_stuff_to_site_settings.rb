class AddStuffToSiteSettings < ActiveRecord::Migration
  def change
  	add_column :site_settings, :featured_video, :integer
   end
end
