class Game < ApplicationRecord
  has_many :league_in_the_games
  has_many :officials_in_the_games

end
