class Jam < ApplicationRecord
  belongs_to :game
  belongs_to :line_up
  belongs_to :jam_finished_by
  has_many :penalty_trackings
end
