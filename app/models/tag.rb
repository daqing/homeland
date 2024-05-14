class Tag < ApplicationRecord
  validates :name, :key, presence: true

  belongs_to :node
  has_many :tag_topics
  has_many :topics, through: :tag_topics

  def self.sorted
    order("position ASC, created_at ASC")
  end
end
