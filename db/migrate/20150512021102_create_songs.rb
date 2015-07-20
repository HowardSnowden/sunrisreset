class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :song_link
      t.text   :lyrics
      t.integer :song_category_id
      

      t.timestamps
    end
  end
end
