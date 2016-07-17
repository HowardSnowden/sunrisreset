class EmailProp < ActiveRecord::Base
  #Yaaayy!!!  
validates_presence_of  :from, :body
end
