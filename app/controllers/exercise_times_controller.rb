class ExerciseTimesController < ApplicationController
  def index
    @exercise_times = ExerciseTime.all
  end

  def new
    @exercise_time = ExerciseTime.new
  end

  def create
    @workout_id = params[:workout_id]
    @exercise_time = ExerciseTime.create( time: params[:time], exercise_id: params[:exercise_id])
    redirect_to "/workouts/#{@workout_id}"
  end

  def show
    
  end

end
