class CreateBandPhotos < ActiveRecord::Migration
  def change
    create_table :band_photos do |t|
     t.string   "image"
     t.datetime "created_at"
     t.datetime "updated_at"
    end
  end
end
