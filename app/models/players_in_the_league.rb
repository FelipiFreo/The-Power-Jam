class PlayersInTheLeague < ApplicationRecord
  belongs_to :player
  belongs_to :league
end
