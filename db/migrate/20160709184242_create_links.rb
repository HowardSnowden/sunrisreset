class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :link 
      t.integer :ep_id 
      t.timestamps
    end
  end
end
