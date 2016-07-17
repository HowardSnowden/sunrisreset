class Link < ActiveRecord::Base
	belongs_to :album, :foreign_key => :ep_id
end
