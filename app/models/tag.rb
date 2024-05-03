class Tag < ApplicationRecord
  validates :name, :key, presence: true

  def self.sorted
    order("position ASC, created_at ASC")
  end
end
