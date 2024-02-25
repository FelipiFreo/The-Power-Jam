class PenaltyTracking < ApplicationRecord
  belongs_to :jam
  belongs_to :game
  belongs_to :player
  belongs_to :penalty
end
