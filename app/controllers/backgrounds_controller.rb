class BackgroundsController < ApplicationController
	before_filter :authenticate_admin!  

	def new 
		@current_backgrounds = Background.all
		@background = Background.new
	end

	def create
		@background = Background.new(background_params)
		if @background.save
			flash[:notice] = "Image successfuly uploaded"
			redirect_to '/backgrounds/new'
		else 
			render :new 
		end
	end


	private 
	def background_params
		 params.require(:background).permit(:image, :site_setting_id)
	end

end
