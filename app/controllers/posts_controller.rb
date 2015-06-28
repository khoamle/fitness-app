class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(id: params[:id], title: params[:title], body: params[:body])
    
  end
end
