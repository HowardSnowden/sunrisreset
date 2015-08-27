class EmailProp < ActiveRecord::Base
  #Yaaayy!!!  
validates_presence_of  :name, :body, :from
end
