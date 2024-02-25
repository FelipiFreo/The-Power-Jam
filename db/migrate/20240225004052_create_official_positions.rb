class CreateOfficialPositions < ActiveRecord::Migration[7.1]
  def change
    create_table :official_positions do |t|
      t.string :official_position
      t.string :official_position_code
      t.string :description

      t.timestamps
    end
  end
end
