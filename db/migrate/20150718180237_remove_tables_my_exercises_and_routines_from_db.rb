class RemoveTablesMyExercisesAndRoutinesFromDb < ActiveRecord::Migration
  def change
    drop_table :my_exercises
    drop_table :routines
    remove_column :comments, :title, :string
  end
end
