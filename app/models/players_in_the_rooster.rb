class PlayerInTheRooster < ApplicationRecord
  belongs_to :rooster
  belongs_to :player
end
