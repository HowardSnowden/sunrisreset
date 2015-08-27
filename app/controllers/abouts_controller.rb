#this controller handles the about page
#GGGOOOOOOOOOOOOOO
class AboutsController < ApplicationController

before_filter :authenticate_admin!   
    
def new
    @about = About.new
end
    

    
def edit
    @about = About.find(About.first)
end

def update
	@about = About.find(About.first)

		if @about.update(about_params)
			redirect_to '/about' 
		else
			render 'edit'
		end
end 

    
def delete
end 

def about_params
    params.require(:about).permit(:why, :who, :what, :where, :when, :how)
end 
    


end
