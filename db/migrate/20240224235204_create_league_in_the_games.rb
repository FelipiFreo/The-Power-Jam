class CreateLeagueInTheGames < ActiveRecord::Migration[7.1]
  def change
    create_table :league_in_the_games do |t|
      t.references :league, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
