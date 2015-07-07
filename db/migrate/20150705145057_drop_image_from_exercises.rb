class DropImageFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :image, :string
  end
end
