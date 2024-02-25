class OfficialsInTheGame < ApplicationRecord
  belongs_to :game
  belongs_to :official_position
  belongs_to :player
end
