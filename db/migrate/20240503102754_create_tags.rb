class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :key
      t.integer :position, default: 0
      t.text :intro

      t.timestamps
    end
  end
end
