class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.text :intro, default: ""
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
