class Api::V1::WorkoutsController < ApplicationController
  def index
    @workouts = current_user.workouts.includes(:workout_exercises)
  end
  def create

  end
  def show
    @workout = Workout.find(params[:id])
    # @workout_exercises = current_user.workout_exercises
  end
end
