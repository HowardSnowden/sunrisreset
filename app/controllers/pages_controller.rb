class PagesController < ApplicationController
    
    def home
       @site_setting = SiteSetting.first      
    end
    
    def see
      @videos = Video.order(created_at: :desc)
      
    end

    def shows

    end
    
    def hear
      @albums = Album.all.order(release_date: :desc)
        
    end
    
    def contact
        @record = EmailProp.new
       
    end
    
    def about
        @abouts = About.first
      
        
    end 

   
end
