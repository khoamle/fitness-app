class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @exercise = Exercise.find_by(id: params[:id])
    @comment = Comment.find_by(id: params[:id])
  end

  def show
    @comment = Comment.find_by(exercise_id: params[:exercise_id])
  end

  def create
    @comment = Comment.new(id: params[:id],body: params[:body], exercise_id: params[:exercise_id], user_id: current_user.id)
    if @comment.save
      flash[:success] = "Comment successfully created!"
      redirect_to "/exercises/#{params[:exercise_id]}"
    else
      render "new"
    end
  end
  def edit
    @comment = Comment.find_by(exercise_id: params[:exercise_id])
  end
  def update
    @comment = Comment.find_by(exercise_id: params[:exercise_id])
    @comment.update(id: params[:id],body: params[:body], exercise_id: params[:exercise_id])
    redirect_to "/exercises/#{params[:exercise_id]}"
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    redirect_to "/exercises/#{@comment.exercise_id}"
  end
end