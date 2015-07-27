class ExerciseTime < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :days_of_week
  belongs_to :user
end
