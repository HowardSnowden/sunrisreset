class CreateTableEmails < ActiveRecord::Migration
  def change
    create_table :email_props do |t|
        t.string :name
        t.string :from 
        t.string :subject
        t.text :body
        
    end
  end
end
