class AddBandCampLinkToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :band_camp_link, :string
  end
end
