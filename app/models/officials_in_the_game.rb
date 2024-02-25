class OfficialsInTheGame < ApplicationRecord
  belongs_to :game
  belongs_to :position
  belongs_to :player
end
