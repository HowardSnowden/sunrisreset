class AddBandCampAlbumIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :band_camp_album_id, :string

  end
end
