class CreateTagTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :tag_topics do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
