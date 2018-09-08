class Background < ActiveRecord::Base
	belongs_to :site_setting
#	mount_uploader :image, BackgroundUploader
end
