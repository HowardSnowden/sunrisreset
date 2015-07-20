class AddBandsToShows < ActiveRecord::Migration
  def change
      add_column :shows, :bands, :text
  end
end
