class Api::V1::ExerciseTimesController < ApplicationController
  def index 
    @exercise_times = ExerciseTime.where(user_id: current_user.id)
  end

  def create
    @exercise_time = ExerciseTime.create(user_id: params[:currentUserId], exercise_id: params[:exerciseId], time: params[:time], day_id: params[:dayId])
    redirect_to :workouts
  end
end
