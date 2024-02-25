class Rooster < ApplicationRecord
  belongs_to :game
  has_many :players_in_the_roosters
end
