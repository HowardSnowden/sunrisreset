class EmailPropsController < ApplicationController
  
    
def create
  @record = EmailProp.new(email_params)
  respond_to do |format|
   if @record.save
    
    format.js { render :action=> 'create'}
    ModelMailer.incoming_messages(@record).deliver

   else 
     
       format.json { render :json => { :error => @record.errors.full_messages }, :status => 422 }
            
   end
  end
end 
    
def edit
end
    
def delete
end 

def email_params
    params.require(:email_prop).permit(:from, :body, :name, :subject)
end 

end
