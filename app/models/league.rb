class League < ApplicationRecord
  has_many :league_in_the_games
  has_many :player_in_the_leagues

end
