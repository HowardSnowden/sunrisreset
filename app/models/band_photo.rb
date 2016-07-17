class BandPhoto < ActiveRecord::Base
 mount_uploader :image, BackgroundUploader
end
