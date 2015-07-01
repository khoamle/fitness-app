class Exercise < ActiveRecord::Base
  has_many :comments
  has_many :images
  has_many :categorized_exercises
  has_many :categories, through: :categorized_exercises
  belongs_to :user
end
