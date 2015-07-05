class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find_by(exercise_id: params[:exercise_id])
  end
end