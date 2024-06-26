class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :players_in_the_leagues
  has_many :players_in_the_roosters
  has_many :officials_in_the_games
  has_many :penalty_trackings

end
