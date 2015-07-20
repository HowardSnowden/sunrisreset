class CreateTableAbout < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
        t.text :who
        t.text :what
        t.text :when
        t.text :where
        t.text :why
        t.text :how
    end
  end
end
