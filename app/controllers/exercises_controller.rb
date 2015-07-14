class ExercisesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @exercises = Exercise.all
    if params[:category]
      @exercises = Category.find_by(name: params[:category]).exercises
    end
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(id: params[:id], name: params[:name], instruction: params[:instruction], equipment: params[:equipment], muscle: params[:muscle], level: params[:level])
    @categorized_exercise = CategorizedExercise.create(category_id: params[:category][:category_id], exercise_id: @exercise.id)
    @comment = Comment.create(exercise_id: @exercise.id)
    redirect_to "/exercises/#{@exercise.id}"
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
    @instructions = @exercise.instruction.split(". ")
    @comment = Comment.find_by(id: params[:id])
    @comments = Comment.all
    render "show"
  end

  def edit
    if user_signed_in?
      @exercise = Exercise.find_by(id: params[:id])
    else
      redirect_to "/users/sign_in"
    end
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(id: params[:id], name: params[:name], instruction: params[:instruction], equipment: params[:equipment], muscle: params[:muscle], level: params[:level])
    #@exercise.images.destroy_all
    redirect_to "/exercises/#{@exercise.id}"
  end

  def destroy
    if user_signed_in?
      @exercise = Exercise.find_by(id: params[:id])
      @categorized_exercise = CategorizedExercise.find_by(exercise_id: @exercise.id)
      @exercise.destroy
      @categorized_exercise.destroy
      redirect_to "/exercises"
    else
      redirect_to "/users/sign_in"
    end
  end

end 
