class Api::V1::ExerciseTimesController < ApplicationController
  def index 
    @exercise_times = ExerciseTime.where(user_id: current_user.id)
  end

  def create
    start = params[:start].to_time - 5.hours
    @exercise_time = ExerciseTime.create(user_id: current_user.id, exercise_id: params[:exercise_id], date: start.to_s, title: params[:title])
    redirect_to :workouts
  end

  def destroy
    @exercise_time = ExerciseTime.find_by(id: params[:id])
    @exercise_time.destroy
    redirect_to :workouts
  end
end
