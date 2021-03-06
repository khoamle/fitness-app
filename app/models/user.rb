class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :exercises
  has_many :comments
  has_many :workouts
  has_many :workout_exercises
  has_many :exercise_times
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
