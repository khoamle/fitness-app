class Exercise < ActiveRecord::Base
  has_many :comments
  has_many :images
  has_many :categorized_exercises
  has_many :categories, through: :categorized_exercises
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
  belongs_to :user
  has_many :exercise_times
  has_many :days_of_weeks, through: :exercise_times
end
