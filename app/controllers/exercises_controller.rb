class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(id: params[:id], name: params[:name], instruction: params[:instruction], equipment: params[:equipment], muscle: params[:muscle], level: params[:level])
    @image_1 = Image.create(exercise_id: @exercise.id, image_url: params[:image_1], exercise_id: @exercise.id)
    @image_2 = Image.create(exercise_id: @exercise.id, image_url: params[:image_2], exercise_id: @exercise.id)
    @categorized_exercise = CategorizedExercise.create(category_id: params[:category][:category_id], exercise_id: @exercise.id)
    @post = Post.create(exercise_id: @exercise.id, title: params[:title], body: params[:body])
    redirect_to "/exercises/#{@exercise.id}"
  end

  def show 
    @exercise = Exercise.find_by(id: params[:id])
    p @exercise.images
  end

  def edit
    @exercise = Exercise.find_by(id: params[:id])
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(id: params[:id], name: params[:name], instruction: params[:instruction], equipment: params[:equipment], muscle: params[:muscle], level: params[:level])
    @image_1 = Image.create(exercise_id: @exercise.id, image_url: params[:image_1])
    @image_2 = Image.create(exercise_id: @exercise.id, image_url: params[:image_2])
    redirect_to "/exercises/#{@exercise.id}"
  end

end 
