class LineUp < ApplicationRecord
  belongs_to :jammer_a
  belongs_to :pivot_a
  belongs_to :blocker1_a
  belongs_to :blocker2_a
  belongs_to :blocker3_a
  belongs_to :jammer_b
  belongs_to :pivot_b
  belongs_to :blocker1_b
  belongs_to :blocker2_b
  belongs_to :blocker3_b

  has_many :jams
end
