class Tag < ApplicationRecord
  validates :name, :key, presence: true

  belongs_to :node

  def self.sorted
    order("position ASC, created_at ASC")
  end
end
