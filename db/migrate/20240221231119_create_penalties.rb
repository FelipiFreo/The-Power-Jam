class CreatePenalties < ActiveRecord::Migration[7.1]
  def change
    create_table :penalties do |t|
      t.string      :name
      t.string      :penalty_code
      t.string      :description
      t.string      :hand_signal
    end
  end
end
