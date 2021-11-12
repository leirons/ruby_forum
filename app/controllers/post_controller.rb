class PostController < ApplicationController

  def index
    puts params[:id]
    @post = Post.where(theme_id:params[:id])
  end

  def edit
    @post = Post.find_by id: params[:id]
  end

  def update
    @post = Post.find_by id: params[:id]
    if @post.update name_of_post:params.require(:name_of_post)
      redirect_to forum_path
    end
  end

  def new

  end

  def delete

  end

end

