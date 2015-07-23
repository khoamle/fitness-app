class ChangeAttributeTimeFromExerciseTimes < ActiveRecord::Migration
  def change
    change_column :exercise_times, :time, :time
  end
end
