class CreateBoardTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :board_topics do |t|
      t.references :board, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
