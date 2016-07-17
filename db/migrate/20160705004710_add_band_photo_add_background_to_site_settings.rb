class AddBandPhotoAddBackgroundToSiteSettings < ActiveRecord::Migration
  def change
  	add_column :site_settings, :band_photo, :string 
  	add_column :site_settings, :main_background, :string
  	add_column :site_settings, :feature_text, :string 
  	add_column :site_settings, :main_color, :string
  	add_column :site_settings, :header_text_color, :string
  	add_column :site_settings, :body_text_color, :string
  	
  end
end
