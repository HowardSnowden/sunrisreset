class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_default_img
  before_filter :set_site_settings
  def set_default_img
      @back_img = view_context.asset_path(
      	SiteSetting.instance.main_background) 
  end 

  def set_site_settings
  	s = SiteSetting.instance
  	@main_color = s.main_color
  	@header_text_color = s.header_text_color
  	@body_text_color = s.body_text_color
  	@background_color = s.background_color
  	@link_color = s.link_color
  end
end
