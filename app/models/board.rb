class Board < ApplicationRecord
  validates :name, presence: true

  has_many :board_topics, dependent: :destroy
  has_many :topics, through: :board_topics

  HOME_SECTION = "home".freeze

  def self.home
    where(section: HOME_SECTION).sorted
  end

  def self.sorted
    order("position DESC, created_at DESC")
  end
end
