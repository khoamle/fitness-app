class Exercise < ActiveRecord::Base
  has_many :comments
  has_many :images
  has_many :categorized_exercises
  has_many :categories, through: :categorized_exercises
  has_many :my_exercises
  has_many :users, through: :my_exercises
  belongs_to :user
  belongs_to :routine
end
