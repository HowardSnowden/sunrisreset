class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_default_img
  def set_default_img
      @back_img = view_context.image_path('TractorLogo2.jpg') 
  end 
end
