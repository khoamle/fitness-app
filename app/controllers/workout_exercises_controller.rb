class WorkoutExercisesController < ApplicationController

  def index 
    
  end

  def create 
    @workout_exercise = WorkoutExercise.new(workout_id: params[:workout][:workout_id], exercise_id: params[:exercise_id], sets: params[:sets], reps: params[:reps])
    if @workout_exercise.save
      flash[:success] = "Your workout exercise sucessfully created!"
      redirect_to :workouts
    else
      redirect_to :exercises
    end
  end
end


