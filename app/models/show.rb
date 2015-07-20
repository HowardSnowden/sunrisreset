class Show < ActiveRecord::Base
 default_scope { where("show_date > ?",  Date.current) }

end
