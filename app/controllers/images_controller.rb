class ImagesController < ApplicationController
  
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(exercise_id: params[:exercise_id], image: params[:image][:image_url])
    if @image.save
      flash[:success] = "Image sucessfully created!"
      redirect_to "/exercises/#{params[:exercise_id]}"
    else
      render "new"
    end
  end

  def update
    @image = Image.find_by(exercise_id: params[:exercise_id])
    @image.update(exercise_id: params[:exercise_id], image: params[:image][:image_url])
    if @image.save
      flash[:success] = "Image sucessfully updated!"
      redirect_to "/exercises/#{params[:exercise_id]}"
    else
      render "edit"
    end
  end 

  def edit
    @image = Image.find_by(exercise_id: params[:exercise_id])
  end

  def destroy
    @image = Image.find_by(exercise_id: params[:exercise_id])
    if @image.destroy
      flash[:danger] = "Image sucessfully deleted!"
      redirect_to :images
    else
      render :images
    end
  end

end
