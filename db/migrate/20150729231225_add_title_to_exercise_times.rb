class AddTitleToExerciseTimes < ActiveRecord::Migration
  def change
    add_column :exercise_times, :title, :string
    rename_column :exercise_times, :time, :date
    change_column :exercise_times, :date, :datetime
  end
end
