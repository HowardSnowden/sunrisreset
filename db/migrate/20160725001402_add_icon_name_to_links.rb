class AddIconNameToLinks < ActiveRecord::Migration
  def change
  	add_column :links, :icon_name, :string
  end
end
