class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.references :player, foreign_key: true
      t.references :coach, foreign_key: true
      t.datetime :next_training

      t.timestamps
    end
  end
end
