class RoutinesController < ApplicationController
  def index

  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.new(id: params[:id], name: params[:name], sets: params[:sets], reps: params[:reps], user_id: current_user.id, exercise_id: params[:exercise_id])
    if @routine.save
      flash[:success] = "Workout routine successfully created!"
      redirect_to "/routines/#{@routine.id}"
    else
      render "new"
    end
  end
end
