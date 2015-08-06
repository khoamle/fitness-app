class Api::V1::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    if params[:category]
      @exercises = Category.find_by(name: params[:category]).exercises
    end
  end
end
