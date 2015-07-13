class MyExercisesController < ApplicationController
  def index
    @my_exercises = current_user.exercises
  end


  def create
    @my_exercise = MyExercise.new(exercise_id: params[:exercise_id], user_id: current_user.id)
    @my_exercise.save
    redirect_to "/my_exercises"
  end
end
