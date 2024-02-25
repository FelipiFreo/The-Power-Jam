class CreateRoosters < ActiveRecord::Migration[7.1]
  def change
    create_table :roosters do |t|
      t.references :game, null: false, foreign_key: true
      t.string :team_name
      t.integer :team_score

      t.timestamps
    end
  end
end
