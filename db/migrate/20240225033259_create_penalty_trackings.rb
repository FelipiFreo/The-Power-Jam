class CreatePenaltyTrackings < ActiveRecord::Migration[7.1]
  def change
    create_table :penalty_trackings do |t|
      t.references :jam, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.references :penalty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
