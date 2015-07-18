class WorkoutExercisesController < ApplicationController

  def index 

  end

  def create 
    @workout_exercise = WorkoutExercise.create(workout_id: params[:workout][:workout_id], exercise_id: params[:exercise_id]) 
    redirect_to "/workouts"
  end
end


