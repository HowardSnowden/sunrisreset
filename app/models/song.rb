class Song < ActiveRecord::Base


before_save :default_values
    
validates_presence_of  :title
validates :song_image, allow_blank: true, format: {
  with: %r{\.gif|jpg|png}i,
  message: 'must be a url for gif, jpg, or png image.'
}
 
  def default_values
    if song_image.empty?
        song_image = 'http://i1.sndcdn.com/avatars-000131502794-129ofq-t500x500.jpg'
    end
  end

    
end