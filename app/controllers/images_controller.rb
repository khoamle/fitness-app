require 'pry'
class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(exercise_id: params[:exercise_id], image: params[:image][:image_url])
    if @image.save
      flash[:success] = "Image sucessfully created!"
      redirect_to "/exercises/#{params[:exercise_id]}/images/new"
    else
      render "new"
    end
  end

  def update

  end

  def edit

  end
end
