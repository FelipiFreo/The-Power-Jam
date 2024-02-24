class CreateLeagues < ActiveRecord::Migration[7.1]
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.date :foundation
      t.string :country
      t.string :city
      t.string :instagram

      t.timestamps
    end
  end
end
