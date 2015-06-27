class AddExerciseIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :exercise_id, :integer
  end
end
