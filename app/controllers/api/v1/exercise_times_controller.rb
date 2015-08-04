class Api::V1::ExerciseTimesController < ApplicationController
  def index 
    @exercise_times = ExerciseTime.where(user_id: current_user.id)
  end

  def create
    @exercise_time = ExerciseTime.create(user_id: current_user.id, exercise_id: params[:exercise_id], date: params[:start], title: params[:title])
    redirect_to :workouts
  end

  def destroy
    @exercise_time = ExerciseTime.find_by(id: params[:id])
    @exercise_time.destroy
    redirect_to :workouts
  end
end
