class EmailProp < ActiveRecord::Base
    
validates_presence_of  :name, :body, :from
end
