class BoardTopic < ApplicationRecord
  belongs_to :board
  belongs_to :topic
end
