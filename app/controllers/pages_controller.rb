class PagesController < ApplicationController
    
    def home
        @posts = Post.order(created_at: :desc).limit(30)
        @shows = Show.order(show_date: :desc)
        
    end
    
    def see
      @videos = Video.all
      
    end
    
    def hear
      @songs = Song.all
      @back_img = view_context.image_path('bird.jpg')
    end
    
    def contact
        @record = EmailProp.new
        @back_img = view_context.image_path('Tractor.jpg')
    end
    
    def about
        @abouts = About.first
        @back_img = view_context.image_path('moon.jpg')
        
    end 

   
end
