class Posts < ActiveRecord::Migration
  def change
      create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :image
      t.timestamps
    end


  end
end