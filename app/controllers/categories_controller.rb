class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(id: params, name: params[:name])
    
  end


end
