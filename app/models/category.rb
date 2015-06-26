class Category < ActiveRecord::Base
  has_many :categorized_exercises
  has_many :exercises, through: :categorized_exercises
end
