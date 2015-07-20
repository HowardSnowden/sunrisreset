class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
        t.string :title
        t.string :embed_link
        t.string :uploader
        

        t.timestamps
    end
  end
end
