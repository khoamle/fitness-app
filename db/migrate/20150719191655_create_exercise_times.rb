class CreateExerciseTimes < ActiveRecord::Migration
  def change
    create_table :exercise_times do |t|
      t.integer :exercise_id
      t.integer :day_id
      t.datetime :time

      t.timestamps null: false
    end
  end
end
