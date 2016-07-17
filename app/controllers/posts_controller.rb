class PostsController < ApplicationController

 before_filter :authenticate_admin!   
    
def index
@posts = Post.all

end
    
def new
    @post = Post.new
end
    
def create
    @post = Post.new(post_params)
     if @post.save
         redirect_to root_url
      else 
         render 'new'
      end 
end 

def update   
 @post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to root_url 
		else
			render 'edit'
		end
end
    
def edit
    @post = Post.find(params[:id])
    
end
    
def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to 'index' }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
 end


def post_params
    params.require(:post).permit(:body, :title, :image)
end 
    
end
