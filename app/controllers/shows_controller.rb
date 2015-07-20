class ShowsController < ApplicationController
 before_filter :authenticate_admin!   
    
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
end
    
def delete
end 

def show_params
    params.require(:show).permit(:show_date, :venue, :cover, :address, :start_time, :bands)
end 

end
