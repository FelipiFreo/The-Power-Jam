class CreateLineUps < ActiveRecord::Migration[7.1]
  def change
    create_table :line_ups do |t|
      t.references :jammer_a, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :pivot_a, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :blocker1_a, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :blocker2_a, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :blocker3_a, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.boolean :has_pivot_cap_a
      t.references :jammer_b, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :pivot_b, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :blocker1_b, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :blocker2_b, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.references :blocker3_b, null: false, foreign_key: { to_table: 'players_in_the_roosters' }
      t.boolean :has_pivot_cap_b

      t.timestamps
    end
  end
end
