class VideosController < ApplicationController
 before_filter :authenticate_admin!   
    
    
def index
    @videos = Video.all
end
    
def new
    @video = Video.new
end
    
def create
    @video = Video.new(video_params)
     if @video.save
         redirect_to root_url
      else 
         render 'new'
      end 
end 
    
def update   
 @video = Video.find(params[:id])

		if @video.update(video_params)
			redirect_to '/see'
		else
			render 'edit'
		end
end
    
def edit
    @video = Video.find(params[:id])
    
end
    
def destroy
    @video = Video.find(params[:id])
    @video.destroy

    respond_to do |format|
      format.html { redirect_to 'index' }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
 end
def video_params
    params.require(:video).permit(:title, :embed_link, :uploader, :vid_id)
end 

end
