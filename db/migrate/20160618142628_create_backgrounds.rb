class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.integer :site_setting_id, null: false 
      t.string :image
      t.timestamps
    end
  end
end
