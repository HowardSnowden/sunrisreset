class Show < ActiveRecord::Base
 default_scope { where("show_date > ?",  Date.current-1) }
  validates_presence_of  :show_date, :venue
end
