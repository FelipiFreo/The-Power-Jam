class Game < ApplicationRecord
  before_create :game_creation_default_status

  has_many :leagues_in_the_games
  has_many :officials_in_the_games
  has_many :roosters
  has_many :jams
  has_many :penalty_trackings


  private

  def game_creation_default_status
    self.game_is_over = false
  end

end
