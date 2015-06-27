class AddExerciseIdCategoryIdToCategoriesExcercises < ActiveRecord::Migration
  def change
    remove_column :categorized_exercises, :name, :string
    add_column :categorized_exercises, :exercise_id, :integer
    add_column :categorized_exercises, :category_id, :integer
  end
end
