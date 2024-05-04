class AddNodeIdToTags < ActiveRecord::Migration[7.1]
  def change
    add_column :tags, :node_id, :integer
  end
end
