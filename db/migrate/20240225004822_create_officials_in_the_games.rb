class CreateOfficialsInTheGames < ActiveRecord::Migration[7.1]
  def change
    create_table :officials_in_the_games do |t|
      t.references :game, null: false, foreign_key: true
      t.references :official_position, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.boolean :is_shadowing

      t.timestamps
    end
  end
end
