class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :exercises
  has_many :comments
  has_many :my_exercises
  has_many :workouts
  has_many :exercises, through: :my_exercises
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
