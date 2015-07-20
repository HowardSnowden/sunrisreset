module VideosHelper
    
    def get_thumbnail(video_id)
                
        if video_id
            thumb = "http://i1.ytimg.com/vi/#{video_id}/hqdefault.jpg"
        
        else 
            thumb = "http://i1.ytimg.com/vi/nope/hqdefault.jpg"
        end
    
    end
end