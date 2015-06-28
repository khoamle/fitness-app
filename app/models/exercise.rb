class Exercise < ActiveRecord::Base
  has_many :posts
  has_many :images
  has_many :categorized_exercises
  has_many :categories, through: :categories_exercises
  belongs_to :user
end
