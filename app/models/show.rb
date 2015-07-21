class Show < ActiveRecord::Base
 default_scope { where("show_date > ?",  Date.current) }
  validates_presence_of  :show_date, :venue
end
