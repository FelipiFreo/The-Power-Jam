class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.date :game_date
      t.time :game_time
      t.string :game_location_nickname
      t.string :game_map_address

      t.timestamps
    end
  end
end
