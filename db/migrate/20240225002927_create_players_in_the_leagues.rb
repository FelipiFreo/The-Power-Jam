class CreatePlayersInTheLeagues < ActiveRecord::Migration[7.1]
  def change
    create_table :players_in_the_leagues do |t|
      t.references :player, null: false, foreign_key: true
      t.references :league, null: false, foreign_key: true
      t.date :start_date
      t.date :exit_date
      t.string :derby_name
      t.string :derby_number

      t.timestamps
    end
  end
end
