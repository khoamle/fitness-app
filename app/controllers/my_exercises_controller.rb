class MyExercisesController < ApplicationController

  def index
    @my_exercises = current_user.exercises
  end

  def create
    @my_exercise = MyExercise.new(exercise_id: params[:exercise_id], user_id: current_user.id)
    if @my_exercise.save
      flash[:success] = "Your workout sucessfully created!"
      redirect_to "/my_exercises"
    else
      redirect_to "/exercises/#{params[:exercise_id]}"
    end
  end

  
end
