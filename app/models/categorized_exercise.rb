class CategorizedExercise < ActiveRecord::Base
  belongs_to :category
  belongs_to :exercise
end
