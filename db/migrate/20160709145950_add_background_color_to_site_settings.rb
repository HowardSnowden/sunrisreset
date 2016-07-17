class AddBackgroundColorToSiteSettings < ActiveRecord::Migration
  def change
  	add_column :site_settings, :link_color, :string
  	add_column :site_settings, :background_color, :string 
  end
end
