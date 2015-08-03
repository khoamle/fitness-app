class AddUserIdToWorkoutExercises < ActiveRecord::Migration
  def change
    add_column :workout_exercises, :user_id, :integer
  end
end
