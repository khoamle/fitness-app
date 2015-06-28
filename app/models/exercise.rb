class Exercise < ActiveRecord::Base
  has_many :posts
  has_many :categorized_exercises
  has_many :categories, through: :categories
  belongs_to :user
end
