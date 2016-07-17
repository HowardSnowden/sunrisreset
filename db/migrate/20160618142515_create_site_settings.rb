class CreateSiteSettings < ActiveRecord::Migration
  def change
    create_table :site_settings do |t|
      t.integer :singleton_guard

      t.timestamps
    end
    add_index :site_settings, :singleton_guard, :unique => true
  end
end
