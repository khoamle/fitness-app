class Api::V1::ExerciseTimesController < ApplicationController
  def index 
    @exercise_times = ExerciseTime.all
  end

  def create
    @exercise_time = ExerciseTime.create(exercise_id: params[:exerciseId], time: params[:time], day_id: params[:dayId])
    redirect_to :workouts
  end
end
