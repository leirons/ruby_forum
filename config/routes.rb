Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/forum', to: "theme#index"


  get '/forum/admin_panel', to: "admin#index"

  get '/forum/:id/edit', to:"theme#edit", as: 'theme_edit'

  post '/forum/:id/edit', to:"theme#update", as: 'theme_update'



  get '/forum/new_theme', to:"theme#new"
  post '/forum/new_theme', to:"theme#create"


end
