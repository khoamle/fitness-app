class DaysOfWeek < ActiveRecord::Base
  has_many :exercise_times
  has_many :exercises, through: :exercise_times
end
