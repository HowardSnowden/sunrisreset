class BandPhotosController < ApplicationController
	before_filter :authenticate_admin!  

	def new 
		@current_band_photos = BandPhoto.all
		@band_photo = BandPhoto.new
	end

	def create
		@band_photo = BandPhoto.new(background_params)
		if @band_photo.save
			flash[:notice] = "Image successfuly uploaded"
			redirect_to '/band_photos/new'
		else 
			render :new 
		end
	end


	private 
	def background_params
		 params.require(:band_photo).permit(:image)
	end

end
