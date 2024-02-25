class CreatePlayersInTheRoosters < ActiveRecord::Migration[7.1]
  def change
    create_table :players_in_the_roosters do |t|
      t.references :rooster, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
