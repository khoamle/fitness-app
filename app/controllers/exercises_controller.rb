class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(id: params[:id], name: params[:name], instruction: params[:instruction], equipment: params[:equipment], muscle: params[:muscle], level: params[:level])
    redirect_to "/exercises/#{@exercise.id}"
  end

  def show 
    @exercise = Exercise.find_by(id: params[:id])
  end

  def edit
    @exercise = Exercise.find_by(id: params[:id])
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(id: params[:id], name: params[:name], instruction: params[:instruction], equipment: params[:equipment], muscle: params[:muscle], level: params[:level])
    redirect_to "/exercises/#{@exercise.id}"
  end

end 
