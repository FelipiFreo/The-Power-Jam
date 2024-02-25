class PlayerInTheRooster < ApplicationRecord
  belongs_to :rooster
  belongs_to :player

  has_many :jammer_a, class_name: 'LineUp', foreign_key: 'jammer_a_id'
  has_many :pivot_a, class_name: 'LineUp', foreign_key: 'pivot_a_id'
  has_many :blocker1_a, class_name: 'LineUp', foreign_key: 'blocker1_a_id'
  has_many :blocker2_a, class_name: 'LineUp', foreign_key: 'blocker2_a_id'
  has_many :blocker3_a, class_name: 'LineUp', foreign_key: 'blocker3_a_id'
  has_many :jammer_b, class_name: 'LineUp', foreign_key: 'jammer_b_id'
  has_many :pivot_b, class_name: 'LineUp', foreign_key: 'pivot_b_id'
  has_many :blocker1_b, class_name: 'LineUp', foreign_key: 'blocker1_b_id'
  has_many :blocker2_b, class_name: 'LineUp', foreign_key: 'blocker2_b_id'
  has_many :blocker3_b, class_name: 'LineUp', foreign_key: 'blocker3_b_id'

end
