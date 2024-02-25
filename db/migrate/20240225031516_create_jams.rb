class CreateJams < ActiveRecord::Migration[7.1]
  def change
    create_table :jams do |t|
      t.references :game, null: false, foreign_key: true
      t.references :line_up, null: false, foreign_key: true
      t.integer :jam_number, default: 1
      t.time :jam_start
      t.time :jam_finish
      t.references :jam_finished_by, null: false, foreign_key: true
      t.boolean :first_trip_a, default: false
      t.integer :jammer_a_score, default: 0
      t.boolean :star_pass_a, default: false
      t.integer :pivot_a_score, default: 0
      t.boolean :first_trip_b, default: false
      t.integer :jammer_score_b, default: 0
      t.boolean :star_pass_b, default: false
      t.integer :pivot_b_score, default: 0

      t.timestamps
    end
  end
end
