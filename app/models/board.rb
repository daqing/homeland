class Board < ApplicationRecord
  validates :name, presence: true

  has_many :board_topics, dependent: :destroy
  has_many :topics, through: :board_topics

  def self.sorted
    order("position DESC")
  end
end
