Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/forum', to: "theme#index", as: "forum"


  get '/forum/admin_panel', to: "admin#index", as: "admin_panel"

  get '/forum/:id/post', to: "post#index", as: "post"

  get '/forum/:id/post/edit', to: "post#edit", as: "post_edit"

  post '/forum/:id/post/edit', to: "post#update", as: "post_update"


  get '/forum/:id/edit', to:"theme#edit", as: 'theme_edit'

  post '/forum/:id/edit', to:"theme#update", as: 'theme_update'


  delete '/forum/:id/delete', to:"theme#delete", as: 'theme_delete'



  get '/forum/new_theme', to:"theme#new"
  post '/forum/new_theme', to:"theme#create"


end
