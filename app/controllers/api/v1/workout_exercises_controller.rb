class Api::V1::WorkoutExercisesController < ApplicationController

  def index 
    @workout_exercises = current_user.workout_exercises
  end

  def create
    @workout_exercise = WorkoutExercise.new(user_id: current_user.id, sets: params[:sets], reps: params[:reps], exercise_id: params[:exerciseId], workout_id: params[:workoutId][:id])
    if @workout_exercise.save
      render :json => "200"
    else

    end
  end
end
