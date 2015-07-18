class WorkoutsController < ApplicationController

  def index
    @workouts = current_user.workouts
  end

  def new
    @workout = Workout.new
  end

  def create 
    @workout = Workout.new(id: params[:id], name: params[:name], user_id: current_user.id)
    if @workout.save
      flash[:success] = "Your workout sucessfully created!"
      redirect_to "/workouts"
    else
      redirect_to "/exercises"
    end
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    @workouts = current_user.workouts
  end
end
