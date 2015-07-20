class Video < ActiveRecord::Base

   before_save :get_id 

    
  private 
    def get_id
         capture = []
         match = self.embed_link.match(/(watch\?v=)([\w-]*)|(\.be\/)([\w-]*)|(embed\/)([\w-]*)/i).captures
            match.each do |t|
                if t != nil
                    capture.push(t)
                end
            end
        one, two = capture
        id = capture[1]
        self.vid_id = id
    end
end
