class DropDayIdFromExerciseTimes < ActiveRecord::Migration
  def change
    remove_column :exercise_times, :day_id, :integer
  end
end
