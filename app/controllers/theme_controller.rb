class ThemeController < ApplicationController

  def index
    @theme = Theme.all
  end

  def new
    @new_theme = Theme.new   # Темы для обсуждения может создавать только администратор/модератор, будет сделано
  end

  def create
    @new_theme = Theme.new name_of_theme:params.require(:name_of_theme)
    if @new_theme.save
      # Сделать редирект
    end
  end

end

  # # Прописываем нужные параметры, которые может создать пользователь
  # private
  # def theme_params
  #   params.require(:name_of_theme)
  # end

