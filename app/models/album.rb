class Album < ActiveRecord::Base
 
 default_scope {order(:release_date => :desc)}
 has_many :links, :foreign_key => :ep_id
 has_many :songs

 accepts_nested_attributes_for :links
 accepts_nested_attributes_for :songs 
# mount_uploader :artwork, BackgroundUploader
# mount_uploader :zip,  BackgroundUploader

 validates_presence_of :release_date, :title
end
