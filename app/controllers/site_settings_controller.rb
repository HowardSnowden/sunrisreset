class SiteSettingsController < ApplicationController
 before_filter :authenticate_admin!  


 def edit
  @site_settings = SiteSetting.find(1)
  @backgrounds = Background.all
  @band_photos = BandPhoto.all
 end

 def update 
   @site_settings = SiteSetting.find(params[:id])
   if @site_settings.update(site_settings_params)
      flash[:notice] = "Settings Saved"
      redirect_to edit_site_setting_path(@site_settings)
    else 
      render :edit
    end
  end
 

 private

 def site_settings_params
   params.require(:site_setting).permit(:main_background, :featured_video, 
    :feature_text, :band_photo, :main_color, :body_text_color, :header_text_color,
    :link_color, :background_color, featured_link_ids: [])
 end
 
 end
