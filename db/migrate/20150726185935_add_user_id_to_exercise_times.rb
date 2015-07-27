class AddUserIdToExerciseTimes < ActiveRecord::Migration
  def change
    add_column :exercise_times, :user_id, :integer
  end
end
