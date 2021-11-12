class ThemeController < ApplicationController

  def index
    @theme = Theme.all
  end

  def new
    @new_theme = Theme.new   # Темы для обсуждения может создавать только администратор/модератор, будет сделано
  end

  def edit
    @theme = Theme.find_by id: params[:id]
  end

  def delete
    @theme = Theme.find_by id: params[:id]
    @theme.destroy
    redirect_to forum_path
  end

  def update
    @theme = Theme.find_by id: params[:id]
    if @theme.update name_of_theme:params.require(:name_of_theme)
      redirect_to forum_path
    end
  end

  def create
    @new_theme = Theme.new name_of_theme:params.require(:name_of_theme)
    if @new_theme.save
      redirect_to forum_path
    end
  end

end

  # # Прописываем нужные параметры, которые может создать пользователь
  # private
  # def theme_params
  #   params.require(:name_of_theme)
  # end

