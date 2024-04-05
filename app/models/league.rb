class League < ApplicationRecord
  has_many :leagues_in_the_games
  has_many :players_in_the_leagues
end
