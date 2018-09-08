class AddLinksToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :zip_link, :string
    add_column :albums, :image_link, :string
  end
end
