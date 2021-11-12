class PostController < ApplicationController

  def index
    @theme = Post.all
  end

  def new
    @new_theme = Post.new   #
  end

end

