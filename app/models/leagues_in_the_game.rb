class LeaguesInTheGame < ApplicationRecord
  belongs_to :league
  belongs_to :game
end
