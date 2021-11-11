class PostController < ApplicationController

  def index
    @theme = Post.all
  end

  def new
    @new_theme = Theme.new   # Темы для обсуждения может создавать только администратор/модератор, будет сделано
  end

end

