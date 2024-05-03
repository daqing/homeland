class CreateNavLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :nav_links do |t|
      t.string :name
      t.string :url
      t.string :section
      t.integer :position

      t.timestamps
    end
  end
end
