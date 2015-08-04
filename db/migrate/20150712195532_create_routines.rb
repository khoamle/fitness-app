class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :exercise_id
      t.integer :user_id
      t.integer :sets
      t.integer :reps

      t.timestamps null: false
    end
  end
end
