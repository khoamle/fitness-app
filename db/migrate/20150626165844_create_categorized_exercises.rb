class CreateCategorizedExercises < ActiveRecord::Migration
  def change
    create_table :categorized_exercises do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
