class Api::V1::WorkoutExercisesController < ApplicationController

  def index 
    @workout_exercises = WorkoutExercise.all
  end

  def create
    @workout_exercise = WorkoutExercise.create(sets: params[:sets], reps: params[:reps], exercise_id: params[:exerciseId], workout_id: params[:workoutId][:id])
    redirect_to :exercises
  end
end
