class ShowsController < ApplicationController
 before_filter :authenticate_admin!   
    
def index
    @shows = Show.all
end
    
    
def new
    @show = Show.new
end
    
def create
    @show = Show.new(show_params)
     if @show.save
         redirect_to root_url
      else 
         render 'new'
      end 
end 

    
def edit
    @show  = Show.find(params[:id])
end
    
def update
 @show = Show.find(params[:id])

		if @show.update(show_params)
			redirect_to '/shows'
		else
			render 'edit'
		end
end
    
def destroy
  @show = Show.find(params[:id])
    @show.destroy

    respond_to do |format|
      format.html { redirect_to 'index' }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
end 

def show_params
    params.require(:show).permit(:show_date, :venue, :cover, :address, :start_time, :bands)
end 

end
