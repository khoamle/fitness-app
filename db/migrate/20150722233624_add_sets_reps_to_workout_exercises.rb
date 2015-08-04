class AddSetsRepsToWorkoutExercises < ActiveRecord::Migration
  def change
    add_column :workout_exercises, :sets, :integer
    add_column :workout_exercises, :reps, :integer
  end
end