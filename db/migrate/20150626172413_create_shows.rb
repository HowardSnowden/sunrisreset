class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
       t.date :show_date
       t.string :venue
       t.string :address
       t.string :cover
       t.time :start_time
       t.timestamps
    end
  end
end
