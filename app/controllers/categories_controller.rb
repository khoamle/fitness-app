class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    
  end

  def create
    @category = Category.create(id: params, name: params[:name])
    redirect_to "/categories/new"
  end


end
