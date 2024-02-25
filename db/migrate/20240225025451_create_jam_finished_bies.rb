class CreateJamFinishedBies < ActiveRecord::Migration[7.1]
  def change
    create_table :jam_finished_bies do |t|
      t.string :finished_by

      t.timestamps
    end
  end
end
