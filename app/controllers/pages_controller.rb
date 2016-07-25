class PagesController < ApplicationController
    before_filter :set_site_setting
    def home
           
    end
    
    def see
      @videos = Video.order(created_at: :desc)
      
    end

    def shows

    end
    
    def hear
      @albums = Album.all.order(release_date: :desc)
        
    end

    def band

    end
    
    def contact
        
       
    end

    private

    def set_site_setting
        @site_setting ||= SiteSetting.first
    end
    

   
end
