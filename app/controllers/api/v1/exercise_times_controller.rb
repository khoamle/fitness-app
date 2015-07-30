class Api::V1::ExerciseTimesController < ApplicationController
  def index 
    @exercise_times = ExerciseTime.where(user_id: current_user.id)
  end

  def create
    @exercise_time = ExerciseTime.create(user_id: current_user.id, exercise_id: params[:exerciseId], date: params[:date], title: params[:title])
    redirect_to :workouts
  end
end
