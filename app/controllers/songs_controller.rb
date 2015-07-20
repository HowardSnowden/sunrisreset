class SongsController < ApplicationController

 before_filter :authenticate_admin!  

def index
    @songs = Song.all.order('song_link DESC')
end

def dynamic_index
    @songs = Song.all.order('song_link DESC')
    render :partial => "songs/ajax"
end
    
    
def new
end
    
def create
  @song = Song.new(song_params)
    
    respond_to do |format|
      if @song.save
        format.html { redirect_to 
            'index' }
        format.js 
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render 'index' }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
end 
    
def update   
 @song = Song.find(params[:id])

		if @song.update(song_params)
			redirect_to '/songs'
		else
			render 'edit'
		end
end
    
def edit
    @song = Song.find(params[:id])
    
end
    
    
def destroy
		@song = Song.find(params[:id])
		@song.destroy
    
end 

def song_params
    params.require(:song).permit(:title, :song_link, :lyrics, :song_category_id, :song_image)
end 

end
