class Game < ApplicationRecord
  has_many :leagues_in_the_games
  has_many :officials_in_the_games
  has_many :roosters
  has_many :jams
  has_many :penalty_trackings
end
