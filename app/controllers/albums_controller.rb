class AlbumsController < ApplicationController

 before_filter :authenticate_admin!  


 def index 
 	@albums = Album.all
 end

 def new 
 	@album = Album.new
 end

 def edit
  	@album = Album.find(params[:id])
 end

 def create
 	  @album = Album.new(album_params)
   if @album.save
      flash[:notice] = "Album created"
      redirect_to albums_path
    else 
      render :edit
    end

 end

 def update 
    @album = Album.find(params[:id])
   if @album.update(album_params)
      flash[:notice] = "Album Saved"
      redirect_to edit_album_path(@album)
    else 
      render :edit
    end
  end

  def destroy 
  	  @album = Album.find(params[:id])
    	@album.destroy

    respond_to do |format|
      format.html { redirect_to 'index' }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end

  end
 

 private

 def album_params
   params.require(:album).permit(:title, :artwork, :release_date, :zip, :band_camp_link, :band_camp_album_id, 
   	links_attributes: [:id, :link, :title, :icon_name, :_destroy], song_ids: [] )
 end
end
