class Exercise < ActiveRecord::Base
  has_many :categorized_exercises
  has_many :categories, through: :categories
end
