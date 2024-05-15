class AddSectionToBoards < ActiveRecord::Migration[7.1]
  def change
    add_column :boards, :section, :string
  end
end
